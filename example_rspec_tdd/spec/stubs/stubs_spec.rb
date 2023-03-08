require "student"
require "course"

describe 'Stub' do
    it '#has_finished?' do
        student = Student.new
        course = Course.new

        allow(student).to receive(:has_finished?).with(an_instance_of(Course)).and_return(true)

        course_finished = student.has_finished?(course)
    
        expect(course_finished).to be_truthy
    end

    it 'Dinamics Arguments' do
        student = Student.new

        allow(student).to receive(:foo) do |arg|
            if arg == :hello
                "hellow"
            elsif arg == :hi
                "Hi!!!"
            end
        end

        expect(student.foo(:hello)).to eq("hellow")
        expect(student.foo(:hi)).to eq("Hi!!!")

    end

    it 'Any Class instance' do
        student = Student.new
        other_student = Student.new

        allow_any_instance_of(Student).to receive(:bar).and_return(true)
    
        expect(student.bar).to be_truthy
        expect(other_student.bar).to be_truthy
    end

    it 'Errors' do # Testing errors
        student = Student.new

        allow(student).to receive(:bar).and_raise(RuntimeError)
    
        expect{ student.bar }.to raise_error(RuntimeError) # We need to pay attention, because when we test errors,
        # we need to change the 'expect(...)' to 'expect{...}'
    end

end


# A Stub is to force a specific response to a given method from an object
