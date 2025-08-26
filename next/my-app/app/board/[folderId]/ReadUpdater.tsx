'use client';

import { useEffect } from 'react';
import { incrementReadCnt } from '@/lib/actions/post-actioins';

export default function ReadUpdater({ id }: { id: number }) {
  useEffect(() => {
    incrementReadCnt(id);
    console.log('🚀 id:', id);
  }, [id]);
  return <></>;
}
