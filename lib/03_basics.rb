def who_is_bigger(a, b, c)
    nbs = [a,b,c]
    
    if nbs[0].nil? || nbs[1].nil? || nbs[2].nil?
        "nil detected"
    else
        case nbs.max
        when a  
            "a is bigger"
        when b 
            "b is bigger"
        when c
            "c is bigger"
        end

    end
    
end

# p who_is_bigger(20,2,3)
# p who_is_bigger(nil,2,3)
# p who_is_bigger(20,60,3)


def reverse_upcase_noLTA(str)
    new_str = str.upcase.reverse.delete('TLA')
    
    new_str
end

#p reverse_upcase_noLTA("Tries this at Home, Kids")


def array_42(arr)
    arr.map{|x| x== 42}.count{|x| x == true} == 1 ? true : false
end

#p array_42([1,42,3])


def magic_array(arr)
    arr.flatten.sort.map{|x| x * 2}.delete_if{|x| x%3 == 0}.uniq
end

p magic_array([1, [2, 3], 4, 5, 6, 23, 31, [1, 2, 3]])