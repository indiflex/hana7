'use server';

import { existsSync, mkdirSync } from 'fs';
import { writeFile } from 'fs/promises';
import path from 'path';
import { auth } from '../auth';
import prisma from '../db';
import { userUpdateValidator, zinfer } from '../validator';

export type UserData = {
  id?: number;
  name: string;
  email: string;
  passwd?: string;
  image?: string;
  isadmin?: boolean;
};

export const findUserByEmail = async (email: string) =>
  prisma.user.findUnique({
    where: {
      email,
    },
  });

export const createUser = async (user: UserData) => {
  return prisma.user.create({
    data: user,
  });
};

export const updateUser = async (formData: FormData) => {
  const session = await auth();
  if (!session?.user.id) throw new Error('Need Login!');

  const file = formData.get('file') as File;
  if (file && file.size) {
    const fileName = `${session.user.id}_${file.name}`;
    const uploadDir = path.join(process.cwd(), 'public/profiles');
    if (!existsSync(uploadDir)) mkdirSync(uploadDir);
    const filePath = path.join(uploadDir, fileName);
    const buffer = Buffer.from(await file.arrayBuffer());
    await writeFile(filePath, buffer);
    formData.set('image', `/profiles/${fileName}`);
  }

  const formEntries = Object.fromEntries(formData.entries());
  const validator = userUpdateValidator.safeParse(formEntries);
  if (!validator.success) throw validator.error;
  const data = validator.data as zinfer<typeof userUpdateValidator>;
  console.log('🚀 data:', data);
  const rs = await prisma.user.update({
    select: { id: true, name: true, image: true, email: true, isadmin: true },
    where: { id: data.id },
    data,
  });
  return rs;
};
