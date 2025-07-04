'use client';

import { StepBackIcon } from 'lucide-react';
import { useRouter } from 'next/navigation';
import { reval } from '@/lib/actions/post-actioins';
import { Button } from '@/components/ui/button';

export default function Backer() {
  const router = useRouter();
  // console.log('***************11');

  const go = async () => {
    // console.log('***************22-gogo');
    // router.back();
    // router.refresh();
    // console.log('&&&&&&&&&&&&');
    // router.replace(`/board`);

    await reval('/board');
    router.back();

    // const timestamp = Date.now();
    // const rand = Math.random();
    // router.replace(`/board?_refresh=${timestamp}&_r=${rand}`);
    // router.refresh();
    // console.log('&&&&&&&&&&&&22-replace');
    // router.push('/board?x=1');
  };

  return (
    <>
      <Button onClick={go} variant={'outline'}>
        <StepBackIcon />
      </Button>
    </>
  );
}
