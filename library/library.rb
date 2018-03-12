class Library

attr_reader :books

def initialize(book_collection)
  @books = book_collection

end

def check_rental_details(book_title)
  for book in @books
    if book[:title] == book_title
      return book[:rental_details]
    end
  end
end






















end
