let $x := doc("books.xml")/bookstore/book[@category='CHILDREN']
  return $x/title