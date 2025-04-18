const depthTimer = sec => {
  console.log('depthTimer>>>', sec);
  return new Promise(resolve =>
    setTimeout(() => {
      console.log('depth' + sec, new Date());
      resolve(sec + 1);
    }, sec * 1000)
  );
};

depthTimer(1)
  .then(res => {
    console.log('🚀 res:', res);
    return depthTimer(res);
  })
  .then(depthTimer)
  .catch(err => console.error('Error>>', err));

// const r1 = await depthTimer(1);
// const r2 = await depthTimer(r1);
// const r3 = await depthTimer(r2);
let r = 1;
while (r <= 3) {
  r = await depthTimer(r);
}
