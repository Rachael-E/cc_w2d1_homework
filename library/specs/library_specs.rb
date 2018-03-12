require('minitest/autorun')
require_relative('../library.rb')

class TestLibrary < MiniTest::Test

  def setup
    @library = Library.new([
      {title: "lord_of_the_rings",
        rental_details: {
          student_name: "Jeff",
          date: "01/12/16"
        }
      },
      {title: "the_hobbit",
      rental_details: {
        student_name: "Rachael",
        date: "05/04/17"
        }
      }
    ])

  end

  def test_check_rental_details__true
     result = @library.check_rental_details("lord_of_the_rings")

    assert_equal({
      student_name: "Jeff",
      date: "01/12/16"
    }, result)
  end


  def test_check_rental_details__false
   result = @library.check_rental_details("peter_rabbit")

  assert_equal(nil, result)
  end

  def test_add_book_to_library
    result = @library.add_book_to_library("the_name_of_the_wind")
    assert_equal(3, @library.books.length)
  end

  # def test_change_rental_details
  #
  #
  # end

end
