import Link from 'next/link';
import { auth, signIn, signOut } from '@/lib/auth';
import ProfileImageButton from '@/components/ProfileImageButton';
import ActionButton from '@/components/ui/action-button';
import { Button } from '@/components/ui/button';

export default async function Home() {
  const { user } = (await auth()) ?? {};
  console.log('🚀 user:', user);

  const logout = async () => {
    'use server';
    await signOut({ redirectTo: '/api/auth/signin' });
  };

  const login = async () => {
    'use server';
    await signIn('google', { redirectTo: '/hello' });
  };

  return (
    <div className='grid grid-rows-[20px_1fr_20px] items-center justify-items-center min-h-screen p-8 pb-20 gap-16 sm:p-20 font-[family-name:var(--font-geist-sans)]'>
      <h1 className='text-2xl'>Global Page: {user?.name}</h1>
      {!!user && (
        <ProfileImageButton
          name={user.name}
          image={user.image}
          logoutAction={logout}
        />
      )}

      <div className='flex space-x-3'>
        {!user && (
          <form action={login}>
            <Button>SignIn</Button>
          </form>
        )}

        <ActionButton
          action={async () => {
            'use server';
            await signIn('google');
          }}
        >
          Google Login
        </ActionButton>

        <Link href='/api/auth/signin'>Go Login</Link>
        <span>|</span>
        <Link href='/hello'>Go HELLO</Link>
      </div>
    </div>
  );
}
