import { use } from 'react';
import { getAllFolders } from '@/lib/actions/post-actioins';
import RecentPosts from './RecentPosts';
import WritePost from './WritePost';

export default function Board() {
  const folders = use(getAllFolders());

  return (
    <>
      <h1 className='text-2xl'>최신 글</h1>
      <p className='border m-3 p-3'>
        <RandomData />
      </p>
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

async function RandomData() {
  'use cache';
  await new Promise((resolve) => setTimeout(resolve, 1000));
  return Math.random();
}
