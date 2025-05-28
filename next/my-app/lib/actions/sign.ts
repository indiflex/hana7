'use server';

import { signIn, signOut } from '../auth';

export const login = async () => {
  await signIn('kakao');
};

export const logout = async () => {
  await signOut({ redirectTo: '/api/auth/signin' });
};
