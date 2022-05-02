=begin
Project name: Substrings
Objectives: Count the number of substrings in that are in the dictionary

Implementation:
1. Create a dictionary of predefined words.
2. Create a function that accepts a string and the dictionary.
4. Create the result hash.
3. Split the string into array.
4. Iterate the array in the tho check each word in the dictionary.
5. If the word in in the dictionary, add the word count to the result hash.
=end

dictionary =  ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(input_string, dictionary)

    result_hash =  Hash.new()

    split_string_array =  input_string.split(' ')

    split_string_array.map do |word| 
        puts "#{word} is in the loop."
        dictionary.map do |dict_word|  
            if word.downcase.include?(dict_word)
                puts "#{word.downcase} is in #{dict_word}."
                if(result_hash[dict_word] == nil)
                    result_hash[dict_word] = 1
                else
                    result_hash[dict_word] += 1
                end
            end
        end
    end
    puts result_hash
end

substrings("Howdy partner, sit down! How's it going?", dictionary)