'use client';

import { useRouter } from 'next/navigation';
import { useSession } from 'next-auth/react';
import { PropsWithChildren, useRef } from 'react';
import { Button } from './button';

type Props = {
  href: string;
};
export default function LinkButton({
  href,
  children,
}: PropsWithChildren<Props>) {
  const { data: session, update, status } = useSession();
  console.log('🚀 status:', status);
  const router = useRouter();
  const btnRef = useRef<HTMLButtonElement>(null);

  const go = () => {
    update({});
    console.log('🚀 status:', status);
    router.push(href);
    if (btnRef.current) btnRef.current.textContent = href;
  };
  return (
    <Button ref={btnRef} onClick={go}>
      {session?.user?.name}:{children}
    </Button>
  );
}
