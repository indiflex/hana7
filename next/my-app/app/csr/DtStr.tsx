'use client';

import { useEffect, useState } from 'react';

export default function DtStr() {
  const [dtStr, setDtStr] = useState('');
  const dt = new Date().toString();
  useEffect(() => setDtStr(dt), [dt]);

  return (
    <>
      <h3>{dtStr}</h3>
      <button onClick={() => alert(dtStr)}>Button</button>
    </>
  );
}
