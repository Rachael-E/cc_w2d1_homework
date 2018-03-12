require('minitest/autorun')
require_relative('../codeclan_student.rb')

class TestStudent < MiniTest::Test

  def test_student_name_and_cohort
    cc_student = Student.new("Rachael", 20)
    assert_equal("Rachael", cc_student.student_name)
    assert_equal(20, cc_student.cohort_number)
  end

  def test_can_student_speak
    cc_student = Student.new("Rachael", 20)
    cc_student_says = cc_student.talk("I can talk!")
    assert_equal("I can talk!", cc_student_says)
  end

  def test_student_fav_language
    cc_student = Student.new("Rachael", 20)
    cc_student_fav_lang = cc_student.say_favourite_language("Ruby")
    assert_equal("I love Ruby!", cc_student_fav_lang)
  end



end
