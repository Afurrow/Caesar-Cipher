require './lib/caesar_cipher'

describe '#Caesar Cipher' do
    it 'returns 1 length string' do
        expect(caesar_cipher('a', 5)).to eql('f') 
    end  

    it 'returns 10 length string' do
        expect(caesar_cipher('aaaaaaaaaa', 5)).to eql('ffffffffff') 
    end 

    it 'transforms letter over 26 distance' do 
        expect(caesar_cipher('abcde', 54)).to eql('cdefg')
    end

    it 'same word at 26' do 
        expect(caesar_cipher('same', 26)).to eql('same')
    end

    it 'keeps upper / lower case' do 
        expect(caesar_cipher('TeSt CapitiLIZATION', 26)).to eql('TeSt CapitiLIZATION')
    end

    it 'can use negative distance' do 
        expect(caesar_cipher('cdefg', -54)).to eql('abcde')
    end

    it 'keep special characters unchanged' do 
        expect(caesar_cipher('c?d$e!f@g', -54)).to eql('a?b$c!d@e')
    end
end