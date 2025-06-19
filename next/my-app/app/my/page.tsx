'use client';

import { ShieldUserIcon } from 'lucide-react';
import Image from 'next/image';
import { useRouter } from 'next/navigation';
import { useSession } from 'next-auth/react';
import { updateUser } from '@/lib/actions/auth-actions';
import { Button } from '@/components/ui/button';
import { Input } from '@/components/ui/input';

export default function My() {
  const { data, status, update } = useSession({ required: true });
  console.log('🚀 data:', data, status);

  const router = useRouter();
  if (!data?.user?.id) {
    router.push('/auth/signin');
    return;
  }

  const {
    user: { id, name, email, image, isadmin },
  } = data;

  const updateMyInfo = async (formData: FormData) => {
    formData.append('id', id!);
    formData.append('image', image || '');
    try {
      const userInfo = await updateUser(formData);
      await update(userInfo);
    } catch (err) {
      if (err instanceof Error && 'message' in err) alert(err.message);
      else alert(JSON.stringify(err));
    }
  };

  return (
    <div className='w-[80%] mx-auto'>
      <h1 className='text-2xl flex justify-center gap-3'>
        내 정보 수정 - {name} -{isadmin && <ShieldUserIcon />}
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
          {/* <Input type='hidden' name='id' defaultValue={id} /> */}
          <Input type='text' name='name' defaultValue={name!} />
          <Input type='file' name='file' />
          <Button type='submit'>Save</Button>
        </form>
      </div>
    </div>
  );
}
