require 'rspec'
require './lib/student'

RSpec.describe Student do
    it 'exists' do
        student1 = Student.new({name: "Morgan", age: 21})
        expect(student1).to be_an_instance_of(Student)
      end
    
      it 'has a name' do
        student1 = Student.new({name: "Morgan", age: 21})
        expect(student1.name).to eq("Morgan")
      end
        
     
      it 'has an other name' do
      student2 = Student.new({name: "Jordan", age: 29})  
      expect(student2.name).to eq("Jordan")
      end

    it 'has an age' do
        student1 = Student.new({name: "Morgan", age: 21})
        expect(student1.age).to eq(21)
    end
        
    it 'has an other age' do
        student2 = Student.new({name: "Jordan", age: 29}) 
        expect(student2.age).to eq(29)
    end
    
      it 'has scores' do
        student1 = Student.new({name: "Morgan", age: 21})
        expect(student1.scores).to eq([])
      end

      it 'can log scores' do
        student1 = Student.new({name: "Morgan", age: 21})
        student1.log_scores(80)
        expect(student1.scores).to eq([80])
      end

      it 'can average scores' do
        student1 = Student.new({name: "Morgan", age: 21})
        student1.log_scores(80)
        student1.log_scores(90)
        expect(student1.grade).to eq(85)
      end   
end