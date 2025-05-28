'use client';

import Image from 'next/image';

type Props = {
  name: string;
  image: string;
  logoutAction: () => void;
};
export default function ProfileImageButton({
  name,
  image,
  logoutAction,
}: Props) {
  return (
    <button onClick={logoutAction} className='btn'>
      <Image alt={name} src={image} width={100} height={100} />
    </button>
  );
}
