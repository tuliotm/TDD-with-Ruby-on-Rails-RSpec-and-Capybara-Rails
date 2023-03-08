require 'not_null_string'

describe 'Class' do
    it 'be_instance_of' do
        expect(10).to be_instance_of(Integer) # Needs to be exactly the class
    end

    it 'be_kind_of' do
        expect(10).to be_kind_of(Integer) # It can be by heritage
    end

    it 'be_kind_of' do
        str = NotNullString.new
        expect(str).to be_kind_of(String)
        expect(str).to be_kind_of(NotNullString)
        expect(10).to be_kind_of(Integer) # It can be by heritage
    end

    it 'respond_to' do # If it responds to a certain type of method
        expect("ruby").to respond_to(:size)
        expect("ruby").to respond_to(:count)
    end

    it 'be_an' do # Its the same thing 'be_kind_of', just another type of write.
        str = NotNullString.new

        expect(str).to be_an(String)
        expect(str).to be_an(NotNullString)

        expect(str).to be_a(String)
        expect(str).to be_a(NotNullString)
    end
end