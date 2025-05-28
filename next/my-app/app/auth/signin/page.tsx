'use client';

import { signIn } from 'next-auth/react';
import { Button } from '@/components/ui/button';
import { Input } from '@/components/ui/input';

export default function SignIn() {
  const login = (formData: FormData) => {
    const email = formData.get('email');
    const passwd = formData.get('password');

    if (!email || !passwd) {
      alert('Email and Password is required!');
      return;
    }

    signIn('credentials');
  };

  return (
    <div className='flex flex-col items-center space-x-3'>
      <h2 className='text-2xl mb-3'>Sign In</h2>
      <form
        action={login}
        className='flex flex-col w-3/5 justify-center items-center gap-3'
      >
        <Input type='email' name='email' placeholder='email...' />
        <Input type='password' name='password' placeholder='password...' />

        <div className='flex space-x-5 mt-3'>
          <Button type='reset'>Cancel</Button>
          <Button variant={'primary'} type='submit'>
            Login
          </Button>
        </div>
      </form>
      <hr className='my-3 border border-sky-200 w-full' />

      <div className='flex justify-center space-x-3 p-3'>
        <Button variant={'destructive'} onClick={() => signIn('google')}>
          Google
        </Button>

        <Button variant={'primary'} onClick={() => signIn('github')}>
          Github
        </Button>

        <Button variant={'success'} onClick={() => signIn('naver')}>
          Naver
        </Button>

        <Button variant={'secondary'} onClick={() => signIn('kakao')}>
          Kakao
        </Button>
      </div>
    </div>
  );
}
