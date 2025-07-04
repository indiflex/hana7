'use client';

import { useEffect } from 'react';

export default function Scroller() {
  useEffect(() => {
    const handleScroll = () => {
      const scy = window.scrollY;
      // console.log('🚀 scy:', scy);
      // 화면 전환이 아래 clean-up 보다 더 빠를경우 window는 그대로 유지되므로 이벤트리스너가 살아있어서 0으로 초기화되는 현상발행 ==> 0이 아닐때만 처리!
      if (scy) sessionStorage.setItem('bsy', scy.toString());
    };

    window.addEventListener('scroll', handleScroll);

    const scrollY = sessionStorage.getItem('bsy');
    setTimeout(() => {
      window.scrollTo({ top: Number(scrollY), behavior: 'smooth' });
    }, 100);

    return () => {
      window.removeEventListener('scroll', handleScroll);
    };
  }, []);

  return <></>;
}
