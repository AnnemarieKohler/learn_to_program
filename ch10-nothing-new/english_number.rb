def english_number number
  return 'Please enter a number that isn\'t negative.' if number < 0
  return "zero" if number == 0
  num_string = ""

  ones_place = ['one',       'two',      'three',
                  'four',      'five',     'six',
                  'seven',     'eight',    'nine']
  tens_place = ['ten',       'twenty',   'thirty',
                  'forty',     'fifty',    'sixty',
                  'seventy',   'eighty',   'ninety']
  teenagers  = ['eleven',    'twelve',   'thirteen',
                  'fourteen',  'fifteen',  'sixteen',
                  'seventeen', 'eighteen', 'nineteen']
  big_nums = [['hundred', 2],
              ['thousand', 3],
              ['million', 6],
              ['billion', 9],
              ['trillion', 12],
              ['quadrillion', 15],
              ['quintillion', 18],
              ['sextillion', 21],
              ['septillion', 24],
              ['octillion', 27],
              ['nonillion', 30],
              ['decillion', 33],
              ['undecillion', 36],
              ['duodecillion', 39],
              ['tredecillion', 42],
              ['quattuordecillion', 45],
              ['quindecillion', 48],
              ['sexdecillion', 51],
              ['septendecillion', 54],
              ['octodecillion', 57],
              ['novemdecillion', 60],
              ['vigintillion', 63],
              ['googol', 100]]
  left = number
  write = left/100
  left = left - write*100

  if write > 0
    hundreds = english_number write
    num_string = num_string + hundreds + ' hundred'
    if left > 0
      num_string = num_string + ' '
    end
  end
  write = left/10 # How many tens left?
  left = left - write*10 # Subtract off those tens.
  if write > 0
    if ((write == 1) and (left > 0))
      num_string = num_string + teenagers[left-1]
      left = 0
    else
      num_string = num_string + tens_place[write-1]
    end
    if left > 0
      num_string = num_string + '-'
    end
  end
  write = left
  if write > 0
    num_string = num_string + ones_place[write-1]
  end
  num_string
end

puts(english_number(100))
