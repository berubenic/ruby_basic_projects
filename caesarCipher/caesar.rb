# frozen_string_literal: true

def caesar_cipher(string, shift)
  string_to_code = string.codepoints
  shifted_array = string_to_code.map do |code|
    if code >= 65 && code <= 90
      start = 65
      last = 90
      find_shifted_code(start, last, code, shift).chr
    elsif code >= 97 && code <= 122
      start = 97
      last = 122
      find_shifted_code(start, last, code, shift).chr
    else
      code.chr
    end
  end
  ciphered_string = shifted_array.join
  p ciphered_string
end

def find_shifted_code(start, last, code, shift)
  if shift.negative?
    x = (code + shift - start - 26).remainder(26)
    shifted_code = if x.zero?
                     start
                   else
                     x + 1 + last
                   end
    shifted_code
  elsif shift.positive?
    x = (code + shift - last + 26).remainder(26)
    shifted_code = x - 1 + start
    shifted_code
  end
end

caesar_cipher('Hello, World!', -29)
