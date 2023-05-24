class GradeBook
    attr_reader :instructor, :courses
    def initialize(instructor)
        @instructor = instructor
        @courses = []
    end
    
    def add_course(course)
        @courses << course
    end
    
    def list_all_students
        all_students = {}
        courses.each do |course|
            student_names = []
            course.students.each do |student|
                student_names << student.name
                all_students.update({course.name => student_names})
            end
        end
        all_students
    end
    
    def students_below(threshold)
        student_names_below = []
        courses.each do |course|
            course.students.each do |student|
                if student.grade < threshold
                student_names_below << student.name
            end
        end
    end
    student_names_below
    end
    
    def list_all_grades
        all_grades = {}
        courses.each do |course|
            student_grades = []
            course.students.each do |student|
                student_grades << student.grade
                all_grades.update({course.name => student_grades})
            end
        end
        all_grades
    end
    
    def students_in_range(min,max)
        student_names_in_range = []
        courses.each do |course|
            course.students.each do |student|
                if student.grade <= max && student.grade  >= min
                    student_names_in_range << student.name
                end
            end
        end
        student_names_in_range
    end

end    
