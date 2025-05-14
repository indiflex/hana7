import { useRef, useState } from 'react';
import './App.css';
import Hello, { type HelloHandler } from './components/Hello';
import My from './components/My';
import type { LoginHandler } from './components/Login';
import { useCounter } from './contexts/counter/useCounter';

export type LoginUser = {
  id: number;
  name: string;
};

export type LoginFn = (id: number, name: string) => void;

export type Cart = {
  id: number;
  name: string;
  price: number;
};

export type Session = {
  loginUser: LoginUser | null;
  cart: Cart[];
};

const SampleSession: Session = {
  // loginUser: null,
  loginUser: { id: 1, name: 'Hong' },
  cart: [
    { id: 100, name: '라면', price: 3000 },
    { id: 101, name: '컵라면', price: 2000 },
    { id: 200, name: '파', price: 5000 },
  ],
};

function App() {
  const [session, setSession] = useState<Session>(SampleSession);
  // const [count, setCount] = useState(0);
  const { count } = useCounter();
  // const { count } = useContext(CounterContext);
  // const { count } = use(CounterContext);
  // const x = 9;
  // if (x > 0) {
  //   const { count } = use(CounterContext);
  //   console.log('🚀 count:', count);
  // }

  const helloButtonRef = useRef<HTMLButtonElement>(null);
  const logoutButtonRef = useRef<HTMLButtonElement>(null);
  const helloHandlerRef = useRef<HelloHandler>(null);

  const loginHandlerRef = useRef<LoginHandler>(null);

  // const plusCount = () => setCount(c => c + 1);
  const login = (id: number, name: string) => {
    if (!loginHandlerRef.current) return;
    const { getName, validate, str, focusId } = loginHandlerRef.current;
    console.log('login>>>>', getName(), str);
    if (validate()) setSession({ ...session, loginUser: { id, name } });
    else focusId();
  };

  const logout = () => {
    // session.loginUser = null; // non-pure function!
    setSession({ ...session, loginUser: null });
  };

  const removeItem = (id: number) => {
    setSession({
      ...session,
      cart: session.cart.filter(item => item.id !== id),
    });
  };

  const addItem = (name: string, price: number) => {
    const id = Math.max(...session.cart.map(item => item.id), 0) + 1;
    console.log('🚀 name:', id, name, price);
    setSession({ ...session, cart: [...session.cart, { id, name, price }] });
  };

  const editItem = (workingItem: Cart) => {
    setSession({
      ...session,
      cart: session.cart.map(item =>
        item.id === workingItem.id ? workingItem : item
      ),
    });
  };

  return (
    <>
      <h2>count: {count}</h2>
      <My
        session={session}
        login={login}
        logout={logout}
        removeItem={removeItem}
        addItem={addItem}
        editItem={editItem}
        logoutButtonRef={logoutButtonRef}
        loginHandlerRef={loginHandlerRef}
      />
      <Hello
        name={'홍길동'}
        age={33}
        helloButtonRef={helloButtonRef}
        refx={helloHandlerRef}
      >
        반갑습니다!
      </Hello>
      <button onClick={() => helloButtonRef.current?.click()}>
        Click Hello
      </button>
      <button onClick={() => logoutButtonRef.current?.click()}>
        Logout in App
      </button>

      <button onClick={() => console.log(helloHandlerRef.current?.xx)}>
        sayHello
      </button>
    </>
  );
}

export default App;
