class Student

  attr_accessor :student_name, :cohort_number


  def initialize(name, cohort)
    @student_name = name
    @cohort_number = cohort
  end

  def talk(phrase)
    return phrase
  end

  def say_favourite_language(lang)
    return "I love " + lang + "!"

  end


end
