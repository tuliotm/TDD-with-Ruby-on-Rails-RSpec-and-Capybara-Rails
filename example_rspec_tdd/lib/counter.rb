class Counter
    @qtd = 0

    def self.qtd
        @qtd
    end

    def self.incriment
        @qtd += 1
    end
end