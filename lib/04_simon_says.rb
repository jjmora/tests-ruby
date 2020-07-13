def echo(str)
    return str
end


def shout(str)
    str.upcase
end

def repeat(str, times=2)
    str+(" "+str)*(times-1)
end

#p repeat("text",2)


def start_of_word(str, nb=1)
    str.slice(0..nb-1)
end


def first_word(str)
    str.split(' ').first
end

#p first_word('oh dear')


def titleize(str)
    arr = []
    new_str = str.split(' ')
    arr.push(new_str[0].capitalize)
    new_str.drop(1).each do |x|
        if x.length > 3
            arr.push(x.capitalize)
        else
            arr.push(x)
        end

    end
    arr = arr.join(" ")
end

p titleize('the this is a text')