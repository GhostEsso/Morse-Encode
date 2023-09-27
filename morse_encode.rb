CODES_CHAR = {
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
  '--..' => 'Z'
}.freeze

def decode_char(val)
  CODES_CHAR[val]
end

char = decode_char('.-')
puts char

def decode_word(word)
  letters = word.split
  decoded_word = ''
  letters.each do |letter|
    decoded_char = decode_char(letter)
    decoded_word += decoded_char unless decoded_char.nil?
  end
  decoded_word
end

puts decode_word('-- -.--')

def decode(morse_text)
  words = morse_text.split('   ')
  decoded_text = ''
  words.each do |word|
    decoded_text += "#{decode_word(word)} "
  end
  decoded_text.strip
end

puts decode('-- -.--   -. .- -- .')
puts decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
