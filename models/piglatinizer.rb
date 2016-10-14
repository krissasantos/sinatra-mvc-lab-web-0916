class PigLatinizer

  @@vowels = ['a','e', 'i','o', 'u']
  @@consonants = ['b','c','d','g','h','j','k','l','m','n','p','q','r','s','t','v','w','x','y','z']


    def to_pig_latin(sentence)
        words = sentence.split(" ")
        words.map do |word|
          piglatinize(word)
        end.join(" ")

    end


  def piglatinize(original_word)
    if @@vowels.include?(original_word[0].downcase)
      original_word = original_word + 'way'
      return original_word

    else

      array = original_word.split("")  

      # array = ['t','h','e','r','e']
      until @@vowels.include?(array[0].downcase)
        move_letter = array.shift
        array.push(move_letter)
      end
  
      return array.join('') + 'ay'
    end    
  end
  

end

