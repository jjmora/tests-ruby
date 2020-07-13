def time_string(s)
# Cuantas veces hay 3600 = 1 h
# cuantas veces hay 60 = 1 min
# el resto son segundos
    h = 0

    while s > 3600
        s = s-3600
        h += 1
    end

    m = 0
    while s > 60
        s = s - 60
        m += 1
    end
    
    
    if h < 10
        h = "0#{h}"
    else
        h ="#{h}"
    end
    
    if m < 10
        m = "0#{m}"
    else
        m ="#{m}"
    end

    if s < 10
        s = "0#{s}"
    else
        s ="#{s}"
    end
    
    return "#{h}:#{m}:#{s}"

end


#p time_string(6586)

