require('minitest/autorun')
require('minitest/pride')
require_relative('./codeclan_students')

class TestStudent < MiniTest::Test

def setup
  @student = Student.new("Donatello", 12)
end


  def test_student_name
    student = Student.new("Donatello", 12)
    assert_equal("Donatello", student.student_name)
  end

  def test_cohort
    student = Student.new("Donatello", 12)
    assert_equal(12, student.cohort)
  end

  def test_set_student_name
    @student.set_student_name("Raphael")
    assert_equal("Raphael", @student.student_name)
  end

  def test_set_cohort
    @student.set_cohort(11)
    assert_equal(11, @student.cohort)
  end

  def test_student_can_talk
    assert_equal("I can talk", @student.student_can_talk)
  end

  def test_student_fave_language
    assert_equal("I love Ruby", @student.student_fave_language("Ruby"))
  end


end