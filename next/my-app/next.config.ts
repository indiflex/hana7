import type { NextConfig } from 'next';

const nextConfig: NextConfig = {
  /* config options here */
  experimental: {
    useCache: true,
    // externalDir: true,
    // serverComponentsExternalPackages: [],
  },
  output: 'standalone',
  compiler: { styledComponents: true },
  // webpack: (config) => {
  //   config.resolve.alias['@'] = __dirname;
  //   return config;
  // },

  images: {
    remotePatterns: [
      {
        hostname: 'picsum.photos',
      },
      {
        hostname: 'lh3.googleusercontent.com',
      },
      {
        hostname: 'avatars.githubusercontent.com',
      },
      {
        hostname: 'k.kakaocdn.net',
      },
      {
        hostname: 'phinf.pstatic.net',
      },
    ],
  },
};

export default nextConfig;
