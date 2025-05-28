import Link from 'next/link';
import { login, logout } from '@/lib/actions/sign';
import { auth } from '@/lib/auth';
import ProfileImageButton from '@/components/ProfileImageButton';
import ActionButton from '@/components/ui/action-button';
import { Button } from '@/components/ui/button';

export default async function Home() {
  const session = await auth();
  console.log('🚀 session:', session);

  // const login = async () => {
  //   'use server';
  //   await signIn('google', { redirectTo: '/hello' });
  // };

  return (
    <div className='grid grid-rows-[20px_1fr_20px] items-center justify-items-center min-h-screen p-8 pb-20 gap-16 sm:p-20 font-[family-name:var(--font-geist-sans)]'>
      <h1 className='text-2xl'>Global Page: {session?.user?.name}</h1>
      {!!session?.user && (
        <ProfileImageButton
          name={session.user.name || ''}
          image={session.user.image}
          logoutAction={logout}
        />
      )}

      <div className='flex flex-wrap space-x-3'>
        {!session?.user && (
          <form action={login}>
            <Button>SignIn</Button>
          </form>
        )}

        <ActionButton action={login}>Google Login</ActionButton>

        <ActionButton action={login}>Kakao Login</ActionButton>

        <Link href='/api/auth/signin?callbackUrl=/hi'>Go Login</Link>
        <span>|</span>
        <Link href='/api/auth/signout'>Go Logout</Link>
        <span>|</span>
        <Link href='/hello'>Go HELLO</Link>
      </div>
    </div>
  );
}
