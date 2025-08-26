import { Meta, StoryObj } from '@storybook/nextjs/*';
import LinkButton from './link-button';

const meta: Meta<typeof LinkButton> = {
  title: 'Atoms/LinkButton',
  component: LinkButton,
  tags: ['autodocs'],
};

type Story = StoryObj<typeof meta>;

export const LoginButton: Story = {
  // args: {
  //   children: 'Go Login',
  //   href: '/auth/signin',
  // },
  render: () => <LinkButton href='/auth/signin'>Go Login</LinkButton>,
};

export default meta;
