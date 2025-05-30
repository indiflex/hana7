'use server';

import prisma from '../db';

export const getAllFolders = async () => prisma.folder.findMany();

export const getFolder = async (id: number) =>
  prisma.folder.findUnique({
    where: { id },
    include: {
      Post: true,
    },
  });

export const getPosts = async (folder: number) =>
  prisma.post.findMany({
    where: {
      folder,
    },
    include: {
      Folder: true,
    },
  });

export async function createPost(formData: FormData) {
  const title = formData.get('title');
  const content = formData.get('content');
  console.log('🚀 title:', title, content);
}
