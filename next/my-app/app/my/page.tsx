'use client';

import { ShieldUserIcon } from 'lucide-react';
import Image from 'next/image';
import { redirect, useRouter } from 'next/navigation';
import { useSession } from 'next-auth/react';
import { useActionState } from 'react';
import { updateUser } from '@/lib/actions/auth-actions';
import { Button } from '@/components/ui/button';
import { Input } from '@/components/ui/input';

export default function My() {
  const { data, status, update } = useSession({ required: true });
  console.log('🚀 data:', data, status);

  const router = useRouter();
  if (!data?.user?.id) {
    redirect('/auth/signin');
    // router.push('/auth/signin');
    // return;
  }

  const makeNameRequired = ({
    id,
    name,
    email,
    image,
    isadmin,
  }: typeof data.user) => ({
    id: Number(id),
    name: name ?? '',
    email,
    image,
    isadmin,
  });

  const [user, updateMyInfo, isPending] = useActionState(
    async (_pre: unknown, formData: FormData) => {
      formData.append('id', data?.user?.id || '');
      formData.append('image', image || '');
      try {
        const userInfo = await updateUser(formData);
        await update(userInfo);
        router.refresh();
        return userInfo;
      } catch (err) {
        if (err instanceof Error && 'message' in err) alert(err.message);
        else alert(JSON.stringify(err));
      }
    },
    makeNameRequired(data.user)
  );

  const { id, name, email, image, isadmin } = user!;

  return (
    <div className='w-[80%] mx-auto'>
      <h1 className='text-2xl flex justify-center gap-3'>
        {id}. 내 정보 수정 - {name} -{isadmin && <ShieldUserIcon />}
      </h1>

      <div className='grid grid-cols-3 border p-5'>
        <div className='flex justify-center'>
          {image && (
            <Image
              src={image}
              alt={name!}
              width={100}
              height={100}
              className='rounded-full'
            />
          )}
        </div>
        <form action={updateMyInfo} className='space-y-3 m-3 col-span-2'>
          <p className='leading-7'>{email}</p>
          <p className='leading-7 text-sm'>{image}</p>
          {/* <Input type='hidden' name='id' defaultValue={id} /> */}
          <Input type='text' name='name' defaultValue={name!} />
          <Input type='file' name='file' accept='image/*' />
          <Button type='submit' disabled={isPending}>
            Save
          </Button>
        </form>
      </div>
    </div>
  );
}
