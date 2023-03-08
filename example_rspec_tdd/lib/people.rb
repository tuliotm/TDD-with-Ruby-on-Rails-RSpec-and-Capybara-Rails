class People
    attr_accessor :name, :age
    attr_reader :status

    def happy!
        @status = "Feeling Happy!"
    end

    def sad!
        @status = "Feeling Sad!"
    end

    def very_happy!
        @status = "Feeling Very_happy!"
    end
end