class RomanNumeral
  DECIMAL_TO_ROMAN = {
    1000 => 'M',
    500 => 'D',
    100 => 'C',
    50 => 'L',
    10 => 'X',
    5 => 'V',
    1 => 'I'
  }.freeze

  def to_roman_numeral(decimal)
    roman = []

    DECIMAL_TO_ROMAN.each do |d, r|
      roman << r * (decimal / d)
      decimal = decimal % d
    end

    roman.join
         .gsub(/(DCCCC)/, 'CM')
         .gsub(/(LXXXX)/, 'XC')
         .gsub(/(VIIII)/, 'IX')
         .gsub(/(CCCC)/, 'CD')
         .gsub(/(XXXX)/, 'XL')
         .gsub(/(IIII)/, 'IV')
  end
end
