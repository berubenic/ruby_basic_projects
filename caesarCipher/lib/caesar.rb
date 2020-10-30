# frozen_string_literal: true

# caesar cipher
class Caesar
  def caesar_cipher(string, shift)
    shifted_array = string.codepoints.map do |code|
      if code >= 65 && code <= 90
        find_shifted_code(65, 90, code, shift).chr
      elsif code >= 97 && code <= 122
        find_shifted_code(97, 122, code, shift).chr
      else
        code.chr
      end
    end
    shifted_array.join
  end

  def find_shifted_code(start, last, code, shift)
    if shift.negative?
      x = (code + shift - start - 26).remainder(26)
      return start if x.zero?

      x + 1 + last
    elsif shift.positive?
      (code + shift - last + 26).remainder(26) - 1 + start
    end
  end
end
