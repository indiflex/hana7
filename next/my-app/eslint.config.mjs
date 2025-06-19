// For more info, see https://github.com/storybookjs/eslint-plugin-storybook#configuration-flat-config-format
// import { dirname } from 'path';
// import { fileURLToPath } from 'url';
import { FlatCompat } from '@eslint/eslintrc';
import storybook from 'eslint-plugin-storybook';

// const __filename = fileURLToPath(import.meta.url);
// const __dirname = dirname(__filename);

const compat = new FlatCompat({
  // baseDirectory: __dirname,
  baseDirectory: import.meta.dirname,
});

const eslintConfig = [
  // ...compat.extends('next/core-web-vitals', 'next/typescript', 'prettier'),
  ...compat.config({
    extends: ['next', 'next/core-web-vitals', 'next/typescript', 'prettier'],
    rules: {
      // 'no-unused-vars': 'error',
    },
    overrides: [
      {
        files: ['**/*.d.ts'],
        rules: {
          'no-unused-vars': 'off',
          '@typescript-eslint/no-unused-vars': 'off',
        },
      },
    ],
  }),
  ...storybook.configs['flat/recommended'],
];

export default eslintConfig;
