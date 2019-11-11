
for $x in doc("hw8.xml")/bookstore/book
where $x/price<=30
return $x/title
