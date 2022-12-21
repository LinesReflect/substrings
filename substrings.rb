def substrings(str, dictionary)
    str_count = Hash.new
    used_dictionary = Array.new
    str_lower = str.downcase.scan(/\w+/)
    str_lower.each do |str_word|
        dictionary.select do |dict_word|
            if str_word.include?(dict_word)
                used_dictionary.push(dict_word)
                str_count[dict_word] = used_dictionary.count(dict_word)
            end
        end
    end
    return str_count.sort_by {|k, v| k}.to_h
end