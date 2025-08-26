// import { unstable_cacheTag as cacheTag } from 'next/cache';
import Link from 'next/link';
import { PropsWithChildren, use } from 'react';
import { getAllFolders } from '@/lib/actions/post-actioins';

// const cacheFolders = async () => {
//   'use cache';
//   cacheTag('folders');
//   return getAllFolders();
// };

export default function BoardLayout({ children }: PropsWithChildren) {
  const folders = use(getAllFolders());
  // const folders = use(cacheFolders());

  return (
    <div className='w-[90%] mx-auto'>
      <h1 className='text-2xl text-center'>My Blog</h1>
      <div className='grid grid-cols-3'>
        <div className='border p-3'>
          <h1 className='text-xl'>List</h1>
          <ul className='space-y-15'>
            {folders.map(({ id, title, _count, readcnt }) => (
              <li key={id} className='flex justify-between'>
                <Link href={`/board/${id}`}>
                  {title} ({readcnt})
                </Link>{' '}
                <small>{_count.Post}</small>
              </li>
            ))}
          </ul>
        </div>
        <div className='col-span-2'>{children}</div>
      </div>
    </div>
  );
}
