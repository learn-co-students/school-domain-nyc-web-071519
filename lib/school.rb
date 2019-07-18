class School

    attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        {grade =>[name]} 
        self.roster[grade] == nil ? self.roster[grade] = [name] : self.roster[grade] << name
    end

    def grade(grade)
        self.roster[grade].map{ |i| i}
    end

    def sort
        self.roster.each do |grade, student|
            self.roster[grade] = student.sort
        end
    end

end

