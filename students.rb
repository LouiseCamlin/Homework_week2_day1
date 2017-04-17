# PART A
class Student



  def initialize(student_name, cohort)
    @student_name = student_name
    @cohort = cohort
    
  end

  def student_name
    return @student_name
  end

  def cohort
    return @cohort
  end

  def set_student_name(new_name)
    @student_name = new_name
  end

  def set_cohort(new_cohort)
    @cohort = new_cohort
  end

  def student_can_talk
    return "I can talk"
  end


  def student_fave_language(language)
    return "I love #{language}"
  end


end