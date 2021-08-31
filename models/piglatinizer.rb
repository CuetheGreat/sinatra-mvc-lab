class PigLatinizer

    def initialize

    end

    def piglatinize(text)
        words = text.split(" ")
        b = words.map { |word| piglatinize_word(word) }
        b.join(" ")
    end

    def piglatinize_word(word)

        if word[0].scan(/[aeiouAEIOU]/).size > 0
            "#{word}way"
        else
            consonants = []
            consonants << word[0]

            if word[1].scan(/[aeiouAEIOU]/).size == 0
                consonants << word[1]
                if word[2].scan(/[aeiouAEIOU]/).size == 0
                    consonants << word[2]
                end
            end
            "#{word[consonants.length..-1] + consonants.join + "ay"}"
        end
    end

end