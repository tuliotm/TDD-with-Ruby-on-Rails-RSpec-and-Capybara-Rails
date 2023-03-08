describe 'Output Matcher' do
    it { expect{ puts "Tulio" }.to output.to_stdout }
    it { expect{ print "Tulio" }.to output("Tulio").to_stdout }
    it { expect{ puts "Tulio" }.to output(/Tulio/).to_stdout }

    it { expect{ warn "Tulio" }.to output.to_stderr }
    it { expect{ warn "Tulio" }.to output("Tulio\n").to_stderr }
    it { expect{ warn "Tulio" }.to output(/Tulio/).to_stderr }
end