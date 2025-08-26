'use client';

import { useRouter } from 'next/navigation';
import { useSession } from 'next-auth/react';
import { useActionState, useEffect } from 'react';
import { createPost } from '@/lib/actions/post-actioins';
import { socket } from '@/lib/socket-client';
import FolderDropdown from '@/components/FolderDropdown';
import { Button } from '@/components/ui/button';
import { Input } from '@/components/ui/input';
import { Textarea } from '@/components/ui/textarea';

const MsgCreatePost = 'created-post';

export default function WritePost() {
  const { data } = useSession();
  if (!data?.user.id) throw new Error('Need Login!!');

  const [, creatingPost, isPending] = useActionState(
    async (_pre: number, formData: FormData) => {
      const data = await createPost(formData);
      socket.emit('message', { type: MsgCreatePost, data });
      return 0;
    },
    0
  );

  const router = useRouter();
  useEffect(() => {
    socket.on('message', (data) => {
      console.log('🚀 data:', data);
      if (data.type === MsgCreatePost) router.refresh();
    });

    return () => {
      socket.off('message');
    };
  }, [router]);

  return (
    <form action={creatingPost} className='m-3 space-y-3'>
      <div className='flex space-x-2'>
        <FolderDropdown dataField='folder' />
        <Input
          name='title'
          type='text'
          placeholder='title...'
          defaultValue={'QQQQQ'}
        />
      </div>

      <div>
        <Textarea
          name='content'
          rows={12}
          placeholder='content...'
          className='min-h-32'
          defaultValue={'QQQQ'}
        ></Textarea>
      </div>

      <div className='flex justify-around'>
        <Button type='reset'>Cancel</Button>
        <Button variant='destructive'>Remove</Button>
        <Button type='submit' variant='primary' disabled={isPending}>
          Save
        </Button>
      </div>
    </form>
  );
}
