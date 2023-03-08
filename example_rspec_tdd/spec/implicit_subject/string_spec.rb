require 'not_null_string'

describe String do
    describe NotNullString do # The more intern class is who goes to reference the 'subject'
        it "It's not null" do
            expect(subject).to eq("I'm not null")
        end
    end
end