'use client';

import { useSession } from 'next-auth/react';
import { PropsWithChildren, useState } from 'react';
import { Folder } from '@/lib/folders';

type Props = {
  name: string;
  fAction: () => Promise<Folder[]>;
};

export default function ClientComponent({
  name,
  fAction,
  children,
}: PropsWithChildren<Props>) {
  const {
    data: { user },
  } = useSession();
  console.log('🚀 session:', user);
  const [folders, setFolders] = useState<Folder[]>([]);

  // const plusCount = () => console.log('plus!!!');

  return (
    <>
      <h1 className='text-2xl'>Client Component: {name}</h1>
      <h2 className='text-xl'>{user.name} loged in</h2>
      <button
        onClick={async () => {
          const folders = await fAction();
          console.log('🚀 folders:', folders);
          setFolders(folders);
        }}
        className='btn'
      >
        BTN: {folders.map((f) => f.title).join(' | ')}
      </button>
      <hr />
      <div>{children}</div>
    </>
  );
}
