import Login from './Login';
import Profile from './Profile';
import Item from './Item';
import { useEffect, useMemo, useState, type RefObject } from 'react';
import { useSession } from '../contexts/session/SessionContext';
import { useToggle } from '../hooks/useToggle';

type Props = {
  logoutButtonRef: RefObject<HTMLButtonElement | null>;
};

// type Post = { id: number; title: string };
// const POSTS_URL = 'https://jsonplaceholder.typicode.com/posts?userId=1';

export default function My({ logoutButtonRef }: Props) {
  const {
    session: { loginUser, cart },
  } = useSession();

  // const [isAdding, setAdding] = useState(false);
  // const toggleAdding = () => setAdding(!isAdding);
  const [isAdding, toggleAdding] = useToggle();

  const array = useMemo(() => [1, 2, 3], []);
  useEffect(() => {
    const sum = array.reduce((acc, a) => acc + a, 0);
    console.log('effect Array@@@', sum);
  }, [array]);

  // const [posts, setPosts] = useState<Post[]>([]);
  // const [error, setError] = useState(null);
  // useEffect(() => {
  //   // (async function () {
  //   //   const res = await fetch(POSTS_URL);
  //   //   const data = await res.json();
  //   // })();
  //   const controller = new AbortController();
  //   const { signal } = controller;
  //   fetch(POSTS_URL, { signal })
  //     .then(res => res.json())
  //     .then(setPosts)
  //     .catch(err => {
  //       console.log('🚀 err:', err);
  //       if (!signal.aborted) setError(err);
  //     });

  //   return () => controller.abort();
  // }, []);

  return (
    <>
      {loginUser ? <Profile logoutButtonRef={logoutButtonRef} /> : <Login />}

      <h3>Total: {array}</h3>
      <div>
        <ul>
          {cart.map(item => (
            <li key={item.id}>
              <Item item={item} />
            </li>
          ))}
          {isAdding ? (
            <li>
              <Item
                item={{ id: 0, name: '', price: 3000 }}
                toggleAdding={toggleAdding}
              />
            </li>
          ) : (
            <button onClick={() => toggleAdding()}>ADD</button>
          )}
        </ul>
        <hr />
        {/* <h3>{JSON.stringify(error)}</h3>
        <ul>
          {posts.map(({ id, title }) => (
            <li key={id}>
              {id}. <strong>{title}</strong>
            </li>
          ))}
        </ul> */}
      </div>
    </>
  );
}
