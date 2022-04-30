def caesar_cipher(input_string, key)

  split_string = input_string.split('')
  ascii_code_array = split_string.map do |character|
    character.ord.to_i
  end

  #encode ascii code to caesar code
  coded_array = ascii_code_array.map do |ascii_code|

    # if the ascii code is in the uppercase range
    if (65..90).include?(ascii_code) then
      if (ascii_code + key) < 90 then
        #puts "#{ascii_code.chr} is converted to #{(ascii_code+key).chr}"
        (ascii_code + key).chr
      elsif (ascii_code + key) > 90
        #puts "#{ascii_code.chr} is converted to #{((ascii_code + key) - 90 + 64).chr}"
        ((ascii_code + key) - 90 + 64).chr
      end
    
    #if the ascii code is in lowercase range
    elsif (97..122).include?(ascii_code) then
      if (ascii_code + key) < 122 then
        #puts "#{ascii_code.chr} is converted to #{(ascii_code+key).chr}"
        (ascii_code+key).chr
      elsif (ascii_code + key) > 122
        #puts "#{ascii_code.chr} is converted to #{((input_ascii_code + key) - 122 + 96).chr}"
        ((input_ascii_code + key) - 122 + 96).chr
      end
    else
      ascii_code.chr
    end
  end

  puts 'This is the coded string:'
  puts ascii_code_array.join('')
  puts coded_array.join('')
  coded_array
end

caesar_cipher('What a string!', 5)