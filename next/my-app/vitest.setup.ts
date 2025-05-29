import '@testing-library/jest-dom';

// Next-auth 완전 모킹
vi.mock('next-auth', () => {
  const mockHandlers = {
    GET: vi.fn(),
    POST: vi.fn(),
  };

  // NextAuth 함수가 호출될 때 반환할 객체
  const authConfig = {
    handlers: mockHandlers,
    auth: vi.fn(),
    signIn: vi.fn(),
    signOut: vi.fn(),
  };

  // default export (NextAuth 함수)
  const NextAuth = vi.fn(() => authConfig);

  return {
    default: NextAuth,
    NextAuth,
    AuthError: class AuthError extends Error {},
    CredentialsSignin: class CredentialsSignin extends Error {},
  };
});

// 각 provider도 모킹
vi.mock('next-auth/providers/credentials', () => ({
  default: vi.fn(() => ({
    id: 'credentials',
    name: 'Credentials',
    type: 'credentials',
    credentials: {},
    authorize: vi.fn(),
  })),
}));
