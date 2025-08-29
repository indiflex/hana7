import type { NextConfig } from 'next';

const nextConfig: NextConfig = {
  /* config options here */
  experimental: {
    useCache: true,
  },
  output: 'standalone',
  webpack: (config) => {
    config.resolve.alias['@'] = __dirname;
    return config;
  },
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
