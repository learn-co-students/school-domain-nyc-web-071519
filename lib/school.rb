class School

    attr_reader :name
    attr_accessor :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        if self.roster[grade] == nil
           self.roster[grade] = [name]
        else self.roster[grade].push(name) 
      end
    end

    def roster
        @roster
    end

    def sort
        self.roster.each do |grade, student|
            self.roster[grade] = student.sort
        end
    end

end

