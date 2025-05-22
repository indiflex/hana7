'use client';

import { useSearchParams } from 'next/navigation';
import { PropsWithChildren, useLayoutEffect, useState } from 'react';

export default function HelloLayout({ children }: PropsWithChildren) {
  const [state, setState] = useState('');
  const sparams = useSearchParams();
  console.log('🚀 sparams:', sparams.get('q'));
  useLayoutEffect(() => {
    setState(sparams.get('q') ?? '');
  }, [sparams]);

  const setSearchParams = () => {
    const urlParams = new URLSearchParams(sparams.toString());
    console.log('*******');
    urlParams.set('q', 'new-qqq');
  };

  return (
    <>
      <h1>This is Hello Layout: {state}</h1>
      <hr />
      <div>{children}</div>
      <button onClick={setSearchParams}>SetParam</button>
    </>
  );
}
