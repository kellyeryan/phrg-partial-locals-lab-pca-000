# frozen_string_literal: true

# == Schema Information
#
# Table name: students
#
#  id         :integer          not null, primary key
#  name       :string
#  hometown   :string
#  birthday   :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Student < ActiveRecord::Base
  has_many :classroom_students
  has_many :classrooms, through: :classroom_students

  def self.search(student_name)
    if student_name == ""
      Student.all
    else
      Student.all.find_all do |student|
        student.name.include?(student_name.capitalize)
      end
    end
  end
end
