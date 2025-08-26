import { useEffect, useRef, useState, type FormEvent } from 'react';
import { useSession } from '../contexts/session/SessionContext';
import SockJS from 'sockjs-client';
import { CompatClient, Stomp, type IFrame } from '@stomp/stompjs';

type ChatMsg = {
  id?: number;
  from?: string;
  text: string;
  type?: 'CHAT' | 'JOIN' | 'LEAVE';
};

export default function Chat() {
  const {
    session: { loginUser },
  } = useSession();

  const [msgs, setMessages] = useState<ChatMsg[]>([]);
  const [isConnected, setIsConnected] = useState(false);

  const stompClientRef = useRef<CompatClient>(null);
  const usernameRef = useRef<HTMLInputElement>(null);
  const msgRef = useRef<HTMLInputElement>(null);
  const msgEndRef = useRef<HTMLDivElement>(null);

  const sendMessage = (evt: FormEvent) => {
    evt.preventDefault();

    const inputMessage = msgRef.current?.value;
    if (!inputMessage?.trim() || !stompClientRef.current)
      return alert('closed!!!');

    const message = {
      from: loginUser?.name,
      text: inputMessage,
      type: 'CHAT',
    } as ChatMsg;

    emit(message);
  };
  const emit = (msg: ChatMsg) => {
    if (!stompClientRef.current || !stompClientRef.current.connected) {
      setIsConnected(false);
      connect();
    }
    const msgStr = JSON.stringify(msg);
    const endpoint = msg.type !== 'CHAT' ? '/app/broadcast' : '/app/join-leave';
    stompClientRef.current?.send(endpoint, {}, msgStr);
  };

  const connect = () => {
    const username = usernameRef.current?.value;
    if (!username?.trim()) return;

    const socket = new SockJS('http://localhost:8081/broadcast');
    const stompClient = Stomp.over(socket);

    stompClient.connect(
      {},
      (frame: IFrame) => console.log('-->' + frame),
      (error: unknown) => {
        console.log('STOMP error: ' + error);
        setIsConnected(false);
      }
    );

    stompClient.onConnect = (frame: IFrame) => {
      console.log('🚀 ~ frame:', frame);
      setIsConnected(true);
      emit({ from: username, text: 'join the room', type: 'JOIN' });

      // 메시지 구독
      stompClient.subscribe('/topic/broadcast', message => {
        setMessages(prev => [...prev, JSON.parse(message.body)]);
      });

      // join/leave 구독
      stompClient.subscribe('/topic/join-leave', function (message) {
        setMessages(prev => [...prev, JSON.parse(message.body)]);
      });
    };

    stompClient.onWebSocketClose = () => {
      setIsConnected(false);
      setTimeout(() => connect(), 60000);
    };

    stompClientRef.current = stompClient;
  };

  const disconnect = () => {
    stompClientRef.current?.disconnect();
    stompClientRef.current = null;
  };

  const scrollToBottom = () => {
    msgEndRef.current?.scrollIntoView({ behavior: 'smooth' });
  };

  useEffect(() => {
    scrollToBottom();
  }, [msgs]);

  return (
    <>
      <div className='container flex flex-col border mx-auto h-[90vh]'>
        <h1 className='text-xl text-center'>React Chat</h1>
        <section className='flex-1 p-3 flex flex-col'>
          <div className='border border-b-0 flex justify-center items-center gap-3'>
            <label htmlFor='nickname'>
              nickname:
              <input
                type='text'
                id='nickname'
                ref={usernameRef}
                defaultValue={loginUser?.name}
                className='px-2 border rounded-md'
              />
            </label>
            <button
              id='btnConnect'
              onClick={isConnected ? disconnect : connect}
              disabled={isConnected}
              className='border rounded-md px-2 disabled:bg-gray-300'
            >
              {isConnected ? 'disconnect' : 'connect'}
            </button>
          </div>
          <div className='border text-left overflow-auto h-[65vh]'>
            {msgs.map(({ id, from, text }) => (
              <p key={id}>
                {from}: {text}
              </p>
            ))}
            <div ref={msgEndRef}></div>
          </div>
          <form onSubmit={sendMessage} className='border border-t-0 flex gap-1'>
            <input
              type='text'
              ref={msgRef}
              defaultValue='XXXXXX'
              className='px-2 w-full'
            />
            <button type='submit' className='border rounded-md px-2'>
              send
            </button>
          </form>
        </section>
      </div>
    </>
  );
}
