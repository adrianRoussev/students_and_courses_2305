require 'rspec'
require './lib/course'
require './lib/student'

RSpec.describe Course do 
    it 'exists' do
        course1 = Course.new("Calculus", 2)
        expect(course1).to be_an_instance_of(Course)
      end
    
      it 'has a name' do
        course1 = Course.new("Calculus", 2)
        expect(course1.name).to eq("Calculus")
      end
        
     
      it 'has an other name' do
        course2 = Course.new("Art", 2)
      expect(course2.name).to eq("Art")
      end

    it 'has a capacity' do
        course1 = Course.new("Calculus", 2)
        expect(course1.capacity).to eq(2)
    end
        
    it 'has an other capacity' do
        course2 = Course.new("Art", 3)
        expect(course2.capacity).to eq(3)
    end
    
      it 'has students' do
        student1 = Student.new({name: "Morgan", age: 21})
        student2 = Student.new({name: "Jordan", age: 29}) 
        course1 = Course.new("Calculus", 2)  
        expect(course1.students).to eq([])
      end

      it 'can add students' do
        student1 = Student.new({name: "Morgan", age: 21})
        student2 = Student.new({name: "Jordan", age: 29}) 
        course1 = Course.new("Calculus", 2) 
        course1.enroll(student1) 
        course1.enroll(student2) 
        expect(course1.students).to eq([student1,student2])
      end

      it 'can be full' do
        student1 = Student.new({name: "Morgan", age: 21})
        student2 = Student.new({name: "Jordan", age: 29}) 
        course1 = Course.new("Calculus", 2) 
        course1.enroll(student1) 
        expect(course1.full?).to eq(false)
      end
end

