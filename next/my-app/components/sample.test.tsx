import { render, screen } from '@testing-library/react';
import { getFolders } from '@/lib/folders';
import ServerComponent from './ServerComponent';

function Hello() {
  return <h1>Hello Vitest!</h1>;
}

test('renders hello message', () => {
  render(<Hello />);
  expect(screen.getByText(/hello vitest/i)).toBeInTheDocument();
});

test('server comp', async () => {
  // render(<ServerComponent f={getFolders} />);
  render(await ServerComponent({ f: getFolders }));
  expect(screen.getByText(/Server Component/i)).toBeInTheDocument();
});
