require "pry"

class School
    attr_reader :name
    attr_accessor :roster
    
    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student, grade)
        self.roster[grade] == nil ? self.roster[grade] = [student] : self.roster[grade].push(student)
    end

    def roster
        @roster
    end

    def grade(grade)
        self.roster[grade]
    end

    def sort
        self.roster.each do |grade, student| 
            self.roster[grade] = student.sort
        end
    end
end