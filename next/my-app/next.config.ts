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
  webpack: (config) => {
    config.resolve.alias['@'] = __dirname;

    //   if (!dev && isServer) {
    //     config.externals = config.externals || [];

    //     // styled-jsx를 external에서 제외
    //     if (Array.isArray(config.externals)) {
    //       config.externals = config.externals.filter((external: string) => {
    //         if (typeof external === 'string') {
    //           return !external.startsWith('@swc/') && external !== 'styled-jsx';
    //         }
    //         return true;
    //       });
    //     }
    //   }
    //   return config;
  },
  // transpilePackages: ['styled-jsx', '@swc/helpers'],

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
