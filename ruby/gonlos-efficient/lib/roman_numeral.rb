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

    DECIMAL_TO_ROMAN.each_with_index do |(d, r), i|
      quantity = (decimal / d)
      next if quantity < 1

      if quantity < 4 || r == 'M'
        roman << r * quantity
      # 900,90,9
      elsif roman.last == prev_letter(i)
        roman.pop
        roman << r + before_prev_letter(i)
      # 400,40,4
      else
        roman << r + prev_letter(i)
      end

      decimal = decimal % d
    end

    roman.join
  end

  def prev_letter(index)
    letter_by_index(index - 1)
  end

  def before_prev_letter(index)
    prev_letter(index - 1)
  end

  def letter_by_index(index)
    DECIMAL_TO_ROMAN.to_a[index][1]
  end
end
