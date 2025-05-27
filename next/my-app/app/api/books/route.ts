import { NextRequest, NextResponse } from 'next/server';
import { books } from './bookdata';

// api/books?q=123
export async function GET(req: NextRequest) {
  const { searchParams } = req.nextUrl;
  const q = searchParams.get('q');
  const results = q ? books.filter(({ title }) => title.includes(q)) : books;

  return NextResponse.json(results);
}
