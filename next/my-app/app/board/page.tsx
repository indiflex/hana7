import { unstable_cacheTag as cacheTag, revalidateTag } from 'next/cache';
import { Suspense, use } from 'react';
import { getAllFolders } from '@/lib/actions/post-actioins';
import RecentPosts from './RecentPosts';
import Scroller from './Scroller';
import WritePost from './WritePost';

// export const dynamic = 'force-dynamic';

export default function Board() {
  const folders = use(getAllFolders());
  // console.log('🚀 folders:', folders);

  const revalidateRandom = async () => {
    'use server';
    // revalidateTag('random-value');
    revalidateTag('math');
  };

  return (
    <>
      <Scroller />
      <h1 className='text-2xl'>최신 글</h1>
      <Suspense fallback={<strong>Loading Random value...</strong>}>
        <SusCompo />
      </Suspense>
      <form action={revalidateRandom}>
        <button className='btn btn-primary ml-3'>
          Revalidate Random Value
        </button>
      </form>
      <div>
        {folders.map(({ id }) => (
          <RecentPosts key={id} folderId={id} />
        ))}
      </div>
      <div>
        <WritePost />
      </div>
    </>
  );
}

const SusCompo = async () => (
  <p className='border m-3 p-3'>{await RandomValue()}</p>
);

async function RandomValue() {
  'use cache';
  cacheTag('random-value', 'math');
  await new Promise((resolve) => setTimeout(resolve, 1000));
  return Math.random();
}
