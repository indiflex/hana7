import { use } from 'react';
import { getFolder, incrementReadCnt } from '@/lib/actions/post-actioins';
import Backer from './Backer';

// import ReadUpdater from './ReadUpdater';

type Props = {
  params: Promise<{ folderId: string }>;
};

export default function Folder({ params }: Props) {
  const { folderId } = use(params);
  const folder = use(getFolder(+folderId));
  const { readcnt } = use(incrementReadCnt(+folderId));

  return (
    <>
      <Backer />
      <h1 className='text-2xl'>
        {folderId}. {folder?.title}
        <small className='text-sm ml-3'>
          ({folder?.readcnt} read, {readcnt})
        </small>
      </h1>
      <ul className='ml-5'>
        {folder?.Post.map((post) => (
          <li key={post.id}>
            {post.id}. {post.title} ({post.writer})
          </li>
        ))}
      </ul>
      {/* <ReadUpdater id={+folderId} /> */}
    </>
  );
}

// const ReadUp = async ({ id }: { id: number }) => (
//   <>{await incrementReadCnt(id)}</>
// );
