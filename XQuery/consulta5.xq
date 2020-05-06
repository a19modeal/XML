for $x at $i in doc("books.xml")/bookstore/book/title
  order by $x
  return <book>{$i}. {data($x)}</book>