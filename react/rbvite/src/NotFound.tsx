import { Link, useNavigate } from 'react-router-dom';

export const NotFound = () => {
  const naviage = useNavigate();

  const goPreviousPage = () => naviage(-1);

  return (
    <>
      <h2>404 Not Found!!</h2>
      <div>{location.pathname} 페이지를 찾을 수 없습니다!</div>
      <div style={{ marginTop: '1rem' }}>
        <Link to='/' style={{ marginRight: '1rem' }}>
          Home으로 가기
        </Link>
        <button onClick={goPreviousPage}>이전페이지로 가기</button>
      </div>
    </>
  );
};
