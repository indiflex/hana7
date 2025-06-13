// import type { Meta, StoryObj } from '@storybook/react';
import { Meta, StoryObj } from '@storybook/nextjs/*';
import { Button } from './button';

const meta: Meta = {
  title: 'Atoms/Button',
  component: Button,
  tags: ['autodocs'],
};

type Story = StoryObj<typeof meta>;

export const PrimaryButton: Story = {
  args: {
    variant: 'primary',
    size: 'md',
    children: 'PRIME',
    onClick: () => alert('primary!!'),
  },
};

export const DangerButton: Story = {
  args: {
    variant: 'destructive',
    size: 'lg',
    children: 'DESTRUCTIVE',
    onClick: () => alert('danger!!'),
  },
};

export default meta;
