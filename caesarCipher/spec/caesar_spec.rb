require './lib/caesar'

describe Caesar do
  describe '#caesar_cipher' do
    it 'shifts a lowercase letter up one letter' do
      caesar = Caesar.new
      expect(caesar.caesar_cipher('a', 1)).to eql('b')
    end

    it 'shifts a lowercase letter down one letter' do
      caesar = Caesar.new
      expect(caesar.caesar_cipher('b', -1)).to eql('a')
    end

    it "loops through the alphabet when shifting up from 'z' " do
      caesar = Caesar.new
      expect(caesar.caesar_cipher('z', 1)).to eql('a')
    end

    it "loops through the alphabet when shifting down from 'a' " do
      caesar = Caesar.new
      expect(caesar.caesar_cipher('a', -1)).to eql('z')
    end

    it 'shifts a uppercase letter' do
      caesar = Caesar.new
      expect(caesar.caesar_cipher('H', 2)).to eql('J')
    end

    it 'shifts both uppercase letters and small letters' do
      caesar = Caesar.new
      expect(caesar.caesar_cipher('Hello', 5)).to eql('Mjqqt')
    end

    it 'shifts multiple words' do
      caesar = Caesar.new
      expect(caesar.caesar_cipher('Hello World', 1)).to eql('Ifmmp Xpsme')
    end

    it 'Keeps punctuation unchanged' do
      caesar = Caesar.new
      expect(caesar.caesar_cipher('Hello!', 1)).to eql('Ifmmp!')
    end
  end
end
