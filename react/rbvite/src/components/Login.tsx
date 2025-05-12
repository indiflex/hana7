import { useState } from 'react';
import type { LoginFn } from '../App';

type Props = { login: LoginFn };

export default function Login({ login }: Props) {
  const [id, setId] = useState(0);
  const [name, setName] = useState('');

  const makeLogin = () => {
    if (!id || isNaN(id) || !name) {
      alert('Input the id and name!');
      return;
    }
    login(id, name);
  };

  // const submitHandler = () => {

  // }

  return (
    <>
      <div>
        LoginID:
        <input
          type='number'
          onChange={evt => setId(+evt.currentTarget.value)}
        />
      </div>
      <div>
        LoginName:
        <input type='text' onChange={evt => setName(evt.currentTarget.value)} />
      </div>
      <button onClick={makeLogin}>Login</button>
    </>
  );
}
