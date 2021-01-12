class School
    attr_accessor :name
    attr_accessor :roster

    def initialize(given_name)
        @name = given_name
        @roster = {}
    end

    def add_student(st_name, st_grade)
        if !@roster[st_grade]
            @roster[st_grade] = []
        end
        @roster[st_grade] << st_name
    end

    def grade(grade_num)
        @roster[grade_num]
    end

    def sort
        @roster.each do |grade,students|
            students.sort!
        end
        @roster
    end

end