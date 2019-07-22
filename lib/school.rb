# code here!
class School

    attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student_name, student_grade)
        roster[student_grade] ||= []
        roster[student_grade] << student_name
    end 
    
    def grade(student_grade)
        roster[student_grade]
    end

    def sort
        sorted_roster = {}

        roster.each do |student_grade, student_names|
            sorted_roster[student_grade] = student_names.sort
        end
        sorted_roster
    end
    
end


