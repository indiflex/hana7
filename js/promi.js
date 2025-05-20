class Promise {
  constructor(nbfn) {
    nbfn(this.runSuccess.bind(this), this.runFail.bind(this));

    this.thenFns = [];
  }

  runSuccess(ret) {
    this.thenFn(ret);

    let t = ret;
    for (const tp of this.thenFns) t = tp(t);
  }

  runFail(err) {
    this.catchFn(err);
  }

  then(f) {
    console.log('then>>', f);
    this.thenFn = f;
    this.thenFns.push(f);
    return this;
  }

  catch(errFn) {
    this.catchFn = errFn;
  }
}

const promi = delay =>
  new Promise((resolve, reject) => {
    setTimeout(Math.random() > 0.5 ? resolve : reject, delay, 'done!');
  });

// promi(1000, console.log);
// promi(1000).then(res => console.log(res));
promi(1000)
  .then(console.log)
  .catch(err => console.log('Error!!', err));

console.log('half time!!');

(async function () {
  await new Promise((resolve, reject) => setTimeout(resolve, 2000));
  console.log('************');
})();

console.log('The end');
