import type { LoginFn, Session } from '../App';
import Login from './Login';
import Profile from './Profile';

type Props = {
  session: Session;
  login: LoginFn;
  logout: () => void;
  removeItem: (id: number) => void;
};

export default function My({
  session: { loginUser, cart },
  login,
  logout,
  removeItem,
}: Props) {
  return (
    <>
      {loginUser ? (
        <Profile loginUser={loginUser} logout={logout} />
      ) : (
        <Login login={login} />
      )}

      <div>
        <ul>
          {cart.map(item => (
            <li key={item.id}>
              {item.id}. {item.name} ({item.price.toLocaleString()})
              <button onClick={() => removeItem(item.id)}>x</button>
            </li>
          ))}
        </ul>
      </div>
    </>
  );
}
