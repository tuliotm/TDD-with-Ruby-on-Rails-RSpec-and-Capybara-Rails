require "student"
require "course"

describe 'Mocks' do # When we use mocks, the sequence changes ( setup > exercise > verify ) to ( setup > verify > exercise )
    it '#bar' do
        # setup
        student = Student.new

        # verify
        expect(student).to receive(:bar) # here we warn the rspec that we want to test if a certain "student" had the call of the method ":bar"

        # exercise
        student.bar
    end

    it 'args' do
        student = Student.new
        expect(student).to receive(:foo).with(123)
        student.foo(123)
    end

    it 'repetition' do
        student = Student.new
        expect(student).to receive(:foo).with(123).twice
        # we can use ".once", ".exactly(3).times", ".at_least(:once)", ".at_least(:twice)", ".at_least(n).times"
        student.foo(123)
        student.foo(123)
    end

    it 'return' do
        student = Student.new
        expect(student).to receive(:foo).with(123).and_return(true) # we can use anything.. "and_return(12456)"
        puts student.foo(123)
    end

end

# Stubs are used to Setup phase, stubs are used to override states
