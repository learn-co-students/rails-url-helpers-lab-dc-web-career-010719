class Student < ActiveRecord::Base

  def to_s
    self.first_name + " " + self.last_name
  end

  def student_status
    return "active" if self.active
    "inactive"
  end

end
