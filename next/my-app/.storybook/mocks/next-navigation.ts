module.exports = {
  useRouter: () => ({
    push: (path: string) => alert(`Go to the ${path}`),
    replace: () => {},
    refresh: () => {},
    back: () => {},
    forward: () => {},
    prefetch: () => Promise.resolve(),
  }),
  usePathname: () => '/',
  useSearchParams: () => new URLSearchParams(),
};
