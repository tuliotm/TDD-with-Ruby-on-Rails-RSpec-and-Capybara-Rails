require 'counter'

describe 'Change Matcher' do
    it { expect{Counter.incriment}.to change { Counter.qtd } } # qtd 1
    it { expect{Counter.incriment}.to change { Counter.qtd }.by(1) } # qtd 2
    it { expect{Counter.incriment}.to change { Counter.qtd }.from(2).to(3) } #qtd 2 from 3

end