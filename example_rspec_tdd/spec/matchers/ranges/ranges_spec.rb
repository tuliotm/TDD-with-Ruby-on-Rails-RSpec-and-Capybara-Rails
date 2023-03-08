describe (1..5), 'Ranges' do
    it '#cover' do
        expect(subject).to cover(2)
        expect(subject).to cover(2, 5)
        expect(subject).not_to cover(0, 6)
    end

    # This way bellow is better to have a more clear result of test
    it { is_expected.to cover(2) } # Implicit descriptions
    it { is_expected.to cover(2, 5) }
    it { is_expected.not_to cover(0, 6) }

    it { expect(subject).to cover(2) }
end