require 'pry'
class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name

    @roster = {}

  end


  def add_student(name, grade)
    @roster[grade] ||= []
    @roster[grade].push (name)
    end
  end

  def grade(number)
    @roster[number]
  end

  def sort
    @roster.each do |key, values|
      values.sort!
    end
    #binding.pry
  end

end
