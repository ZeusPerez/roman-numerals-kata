require_relative '../lib/roman_numeral'

RSpec.describe RomanNumeral do
  it 'translates the 1' do
    expect(subject.to_roman_numeral(1)).to eq('I')
  end

  it 'translates the 2' do
    expect(subject.to_roman_numeral(2)).to eq('II')
  end

  it 'translates the 3' do
    expect(subject.to_roman_numeral(3)).to eq('III')
  end

  it 'translates the 4' do
    expect(subject.to_roman_numeral(4)).to eq('IV')
  end

  it 'translates the 5' do
    expect(subject.to_roman_numeral(5)).to eq('V')
  end

  it 'translates the 9' do
    expect(subject.to_roman_numeral(9)).to eq('IX')
  end

  it 'translates the 21' do
    expect(subject.to_roman_numeral(21)).to eq('XXI')
  end

  it 'translates the 50' do
    expect(subject.to_roman_numeral(50)).to eq('L')
  end

  it 'translates the 100' do
    expect(subject.to_roman_numeral(100)).to eq('C')
  end

  it 'translates the 500' do
    expect(subject.to_roman_numeral(500)).to eq('D')
  end

  it 'translates the 1000' do
    expect(subject.to_roman_numeral(1000)).to eq('M')
  end
end
