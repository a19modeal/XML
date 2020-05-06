for $x in doc("books.xml")/bookstore/book
  where $x/@category='CHILDREN'
  return $x/title