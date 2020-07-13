def is_vowel_array(letter)
    ["a", "e", "i", "o", "u"].include?(letter)
end

def check_words(arr)
    arr.length > 1 #returns true if is > 1 or false if < 1
end

def add_ay(arr)
    arr.insert(-1,"ay")
end

def arr_to_string(arr)
    arr.map{|i| "#{i}"}.join(" ")

end

def check_start_qu(str)
    if str[0][0] == "q" && str[0][1] == "u"
        return true
    end
end


def translate(str)
    new_str = str.split(' ')
    first = new_str[0][0]
    second = new_str[0][1]
    third = new_str[0][2]
    

    if !check_words(new_str) #Only 1 word
    # if start with vowel => put the vowel at the end of the word and add 'ay'
        if is_vowel_array(first) 
            add_ay(new_str[0])
        else
    # if starts with cons
        #if second letter = vowel
        
            if check_start_qu(new_str)
                new_str[0].insert(-1,"#{first}#{second}ay")
                new_str[0][0] = ""
                new_str[0][0] = ""
            else
                if is_vowel_array(second)
                    new_str[0].insert(-1,"#{first}ay")
                    new_str[0][0] = ""
                            
            #if second letter is cons      
                else
                    #if third letter is vowel
                    if is_vowel_array(third)
                        new_str[0].insert(-1,"#{first}#{second}ay")
                        new_str[0][0] = ""
                        new_str[0][0] = ""      
                    else
                    #if third letter is cons
                        new_str[0].insert(-1,"#{first}#{second}#{third}ay")
                        new_str[0][0] = ""
                        new_str[0][0] = ""  
                        new_str[0][0] = "" 
                    end
                end
            end
        end

        return arr_to_string(new_str)

    # If there are more than 1 words
    else
        first_2 = new_str[1][0]
        add_ay(new_str[0])
        new_str[1].insert(-1,"#{first_2}ay")
        new_str[1][0] = ""
        new_str = new_str.join(" ")
    end
    
    return new_str
    
end


p translate("apple")
p translate("banana")
p translate("cherry")
p translate("eat pie")
p translate("three")
p translate("quiet")
#p check_start_qu(["quiet"])