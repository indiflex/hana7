import prisma from '../db';

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
