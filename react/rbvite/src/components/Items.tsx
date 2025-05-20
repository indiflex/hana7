import { useDeferredValue, useReducer, useState } from 'react';
import { useSession } from '../contexts/session/SessionContext';
import Item from './Item';
import ColorTitle from './ColorTitle';
import SlowList from './SlowList';
import clsx from 'clsx';
import { Link } from 'react-router-dom';

export default function Items() {
  const {
    session: { cart },
  } = useSession();

  const [isAdding, toggleAdding] = useReducer(pre => !pre, false);
  const [searchStr, setSearchStr] = useState('');
  const [query] = useState('');
  const deferedQuery = useDeferredValue(searchStr);

  const totalPrice = cart.reduce((acc, item) => acc + item.price, 0);

  const [totalExpectPrice, addExpectPrice] = useReducer(
    (prePrice, newPrice) => totalPrice + newPrice + prePrice * 0,
    totalPrice
  );

  const isSlow = false;

  return (
    <>
      <ColorTitle color={cart.length % 2 === 1 ? 'blue' : 'yellow'}>
        Total: {totalPrice.toLocaleString()}
      </ColorTitle>
      <h4>Expect: {totalExpectPrice.toLocaleString()}</h4>
      <div>
        <label htmlFor='search-str'>
          검색{searchStr}({query}):
          <input
            type='text'
            id='search-str'
            onChange={evt => setSearchStr(evt.target.value)}
          />
        </label>
        {/* <h1 className={`${cart.length % 2 === 0 ? '' : 'red'}`}> */}
        <h1 className={clsx({ red: cart.length % 2 }, 'underline', 'xxx')}>
          {deferedQuery} vs {searchStr}
        </h1>
        {isSlow && <SlowList text={deferedQuery} />}
      </div>
      <ul>
        {cart
          .filter(item => item.name.includes(query))
          .map(item => (
            <li key={item.id}>
              <Link to={`/items/${item.id}`}>{item.name}</Link>
            </li>
          ))}
        {isAdding ? (
          <li>
            <Item toggleAdding={toggleAdding} addExpectPrice={addExpectPrice} />
          </li>
        ) : (
          <button onClick={() => toggleAdding()}>ADD</button>
        )}
      </ul>
    </>
  );
}
