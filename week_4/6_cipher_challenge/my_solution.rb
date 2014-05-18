# U2.W4: Cipher Challenge


# I worked on this challenge with: Max Diener



# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.

def north_korean_cipher(coded_message)
  input = coded_message.downcase.split("") # Convert the coded message to lowecase and then to an array of each letter
  decoded_sentence = []
  cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
            "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
            "g" => "c", 
            "h" => "d", 
            "i" => "e", 
            "j" => "f",
            "k" => "g",
            "l" => "h",
            "m" => "i",
            "n" => "j",
            "o" => "k",
            "p" => "l",
            "q" => "m",
            "r" => "n",
            "s" => "o",
            "t" => "p",
            "u" => "q",
            "v" => "r",
            "w" => "s",
            "x" => "t",
            "y" => "u",
            "z" => "v",
            "a" => "w",
            "b" => "x",
            "c" => "y",
            "d" => "z"}
            
  input.each do |x|  # iterate through each letter in the coded message (input is an array of all letters in order)
    found_match = false   # If found_match is set to true, the block code "if not found_match" will NEVER be executed
                          # so the unmapped letter will not be added back to the decoded message
    cipher.each_key do |y| # iterate through each key in the hash table
      if x == y  # compare the current letter in the coded message to the key in the hash table. If they are equals,
                 # meaning the decoded letter is found, add the mapped value to the decoded message
        puts "I am comparing x and y. X is #{x} and Y is #{y}."
        decoded_sentence << cipher[y]
        found_match = true
        break  # Once the decoded letter is found, break out of the loop and go for the next letter in the input message
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" # If any of these symbols is
        # found in the coded message, it is equivalent to a space. These are all OR statements, so if any are found to
        # be true, it will run the block of code.
        decoded_sentence << " "
        found_match = true
        break
      elsif (0..9).to_a.include?(x) # This puts all the numbers from 0 to 9 into an array and check if that array contains x
        decoded_sentence << x
        found_match = true
        break
      end 
    end
    if not found_match   # If some character not covered by any of the if statments is found in the coded message
                         # that character is put into the decoded message
      decoded_sentence << x
    end
  end
  decoded_sentence = decoded_sentence.join("")
 
  if decoded_sentence.match(/\d+/) #Checks the decoded message for any numbers 
    decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } # Replaces those numbers with a number divided by 100, because
                                                           # he has been known to exaggerate about the amount of stuff he has  end  
  return decoded_sentence # return the decoded message      
end

# Your Refactored Solution

# We automated this task with our own method that shifts letters automatically. It even allows you to
# specify the amount the letters need to be shifted. This will output our needed hash, without having to
# manually write every key/value pair.
def cipherShift(num)
    cipher = Hash.new
    alphabet = ('a'..'z').to_a
    for i in 0..25 do
      cipher[alphabet[i]] = alphabet[ (i + num) % 26 ]
    end
    return cipher
end

# Refactored cipher loop pseudocode: For better efficiency (not wasting time checking for symbols and numbers match each inner loop)
# Check if the letter is a special symbol
# Check if the letter is a number (0..9)
# Iterate through the hash table 
def north_korean_cipher(coded_message)
  input = coded_message.downcase.split("") # Check out this method in IRB to see how it works! Also refer to the ruby docs.
  decoded_sentence = []
  symbol_array = ["@","#","$","%","^","&","*"]
  cipher = cipherShift(-4)  
    
  input.each do |x|
    found_match = false
    if symbol_array.include?(x)
        decoded_sentence << " "
        found_match = true # no break here
    elsif (0..9).to_a.include?(x)
        decoded_sentence << x
        found_match = true # no break here
    else    
      cipher.each_key do |y| 
        if x == y
          decoded_sentence << cipher[y]
          found_match = true
          break
        end  
      end
    end
    if not found_match  
      decoded_sentence << x
    end  
  end
  decoded_sentence = decoded_sentence.join("")
 
  if decoded_sentence.match(/\d+/) 
    decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 }
  end  
  return decoded_sentence
end  

# I tested the program again - it works !!!


# Driver Code:
p north_korean_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver code and should print true
# Find out what Kim Jong Un is saying below and turn it into driver code as well. Driver Code statements should always return "true"
p north_korean_cipher("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.")
p north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!")
p north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.")
p north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!")
p north_korean_cipher("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?")

# Reflection
 