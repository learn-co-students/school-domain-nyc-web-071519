class School

    def initialize(name)
        @roster = {}
        @name = name 
    end

    def add_student(student_name, grade)
        roster[grade] ||= []
        roster[] << student_name
    end

    def grade(student_grade)
        roster[student_grade]
    end

    def sort
        sorted = {}
        roster.map do |grade, students|
            sorted[grade] = students.sort
        end
        sorted
    end

end