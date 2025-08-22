const express = require('express');
const { S3Client, HeadObjectCommand } = require('@aws-sdk/client-s3');
const multer = require('multer');
const multerS3 = require('multer-s3');

require('dotenv').config();
const {
  AWS_ACCESS_KEY: accessKeyId,
  AWS_SECRET_KEY: secretAccessKey,
  AWS_S3_BUCKET: bucket,
  AWS_REGION: region,
} = process.env;

const credentials = { accessKeyId, secretAccessKey };
const s3 = new S3Client({ credentials, region });
const checkFileExists = async Key => {
  try {
    const command = new HeadObjectCommand({ Bucket: bucket, Key });
    await s3.send(command);
    return true; // 파일 존재
  } catch (error) {
    if (error.name === 'NotFound' || error.$metadata?.httpStatusCode === 404)
      return false; // 파일 없음
    throw error; // 다른 에러는 다시 던짐
  }
};

const upload = multer({
  limits: { fileSize: 10 * 1024 * 1024 },
  storage: multerS3({
    s3,
    bucket,
    key: async function (req, file, cb) {
      const orgName = file.originalname;
      let idx = 1,
        key = orgName;
      while (await checkFileExists(key)) key = `${idx++}_${orgName}`;
      cb(null, key);
    },
  }), // <input type="file" name="image" />
});

const app = express();
app.get('/', (req, res) => res.send({ bucket, region }));

app.post('/uploads', upload.single('image'), async (req, res) => {
  const { title, content } = req.body;
  const imageFile = req.file;
  const imageViewUrl = `http://localhost:${PORT}/view/${imageFile.key}`;
  res.status(200).send({ title, content, imageFile, imageViewUrl });
});

app.get('/view/:key', (req, res) => {
  const { key } = req.params;
  res.send(`
    <img src="https://${bucket}.s3.${region}.amazonaws.com/${key}" alt="${key}" style="height: 100%;" />
  `);
});

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`서버가 포트 ${PORT}에서 실행 중입니다...`);
});
