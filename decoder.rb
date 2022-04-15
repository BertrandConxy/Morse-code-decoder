require 'pry'
@morse_decoder = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z',
  '----' => '0',
  '.----' => '1',
  '..---' => '2',
  '...--' => '3',
  '....-' => '4',
  '.....' => '5',
  '-....' => '6',
  '--...' => '7',
  '---..' => '8',
  '----.' => '9'
}
def decode_char(str)
  @morse_decoder[str]
end

# puts(decode_char('.-'))

def decode_word(str)
  # Split the word into individual characters
  chars = str.split
  # decode each character
  decoded_chars_array = chars.map { |n| decode_char(n) }
  # Join the characters again to form the word
  decoded_chars_array.join("  ")
end
puts(decode_word('-- -.--'))

# def decode(str)
#   words = str.split('   ')
#   words.map { |n| decode_word(n) }.join(' ')
# end

# puts(decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'))
