require 'pry'

def my_all?(collection)
    i = 0
    return_values = []
    while i < collection.length
        return_values << yield(collection[i])
        i = i + 1   #i += 1 does the same thing. Use this if it's easier for you.
    end
    if return_values.include?(false)
        false
    else
        true
    end
end