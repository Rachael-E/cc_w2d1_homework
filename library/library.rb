class Library

  attr_reader :books

  def initialize(book_collection)
    @books = book_collection

  end

  def check_rental_details(book_title)
    for book in @books
      if book[:title] == book_title
        return book[:rental_details]
      else
        return
      end
    end
  end

    # def add_book(book_title)
    #     @books.push(book_title[:title])
    #
    # end

    def add_book_to_library(book_title)

      added_book = {
        title: "",
        rental_details: {
          student_name: "",
          date: ""
        }
      }


      for book in @books
        if book[:title] == book_title
          return
        elsif book[:title] != book_title
          @books << added_book
        end
      end
      return
    end

      # for book in @books
      #   book_not_in_library = true if book[:title] != book_title
      # end
      #
      # added_book[:title] << book_title if book_not_in_library == true
      #
      # @books << added_book

    # end
    #
    # def method_name

end
