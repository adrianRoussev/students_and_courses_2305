
require 'rspec'
require './lib/gradebook'
require './lib/course'
require './lib/student'

RSpec.describe Gradebook do 
    it 'exists' do
        gradebook=GradeBook.new("adrian")
        expect(gradebook).to be_an_instance_of(Gradebook)
      end
    
      it 'has an instructor' do
        gradebook=GradeBook.new("adrian")
        expect(gradebook.instructor).to eq("adrian")
      end
        
     
      it 'has an other instructor' do
        gradebook=GradeBook.new("Mark")
      expect(gradebook.instructor).to eq("Mark")
      end

   
    
      it 'has courses' do
        student1 = Student.new({name: "Morgan", age: 21})
        student2 = Student.new({name: "Jordan", age: 29}) 
        course1 = Course.new("Calculus", 2) 
        gradebook=GradeBook.new("adrian") 
        expect(gradebook.courses).to eq([])
      end

      it 'can add courses' do
        student1 = Student.new({name: "Morgan", age: 21})
        student2 = Student.new({name: "Jordan", age: 29}) 
        course1 = Course.new("Calculus", 2) 
        course1.enroll(student1) 
        course1.enroll(student2) 
        gradebook=GradeBook.new("adrian") 
        gradebook.add_course(course1)
        expect(gradebook.courses).to eq([course1])
      end

      it 'can list all students' do
        student1 = Student.new({name: "Morgan", age: 21})
        student2 = Student.new({name: "Jordan", age: 29}) 
        course1 = Course.new("Calculus", 2) 
        course1.enroll(student1) 
        course1.enroll(student2) 
        gradebook=GradeBook.new("adrian") 
        gradebook.add_course(course1)
        expect(gradebook.list_all_students).to eq({"Calculus"=>["Morgan", "Jordan"]})
      end

      
      it 'can list all grades' do
        student1 = Student.new({name: "Morgan", age: 21})
        student2 = Student.new({name: "Jordan", age: 29}) 
        student1.log_scores(70)
        student2.log_scores(90)
        course1 = Course.new("Calculus", 2) 
        course1.enroll(student1) 
        course1.enroll(student2) 
        gradebook=GradeBook.new("adrian") 
        gradebook.add_course(course1)
        expect(gradebook.list_all_grades).to eq("Calculus"=>[70.0, 90.0])
end

it 'can find students in range' do
    student1 = Student.new({name: "Morgan", age: 21})
    student2 = Student.new({name: "Jordan", age: 29}) 
    student1.log_scores(70)
    student2.log_scores(90)
    course1 = Course.new("Calculus", 2) 
    course1.enroll(student1) 
    course1.enroll(student2) 
    gradebook=GradeBook.new("adrian") 
    gradebook.add_course(course1)
    expect(gradebook.students_in_range(60,70)).to eq(["Morgan"])
end
end
