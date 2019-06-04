require 'pry'

def my_all?(collection)
    #see if all of a collection's elements return true for an argument
    i = 0
    block_return_values = []
    while i < collection.length
            block_return_values << yield(collection[i])
        i += 1
    end
    # p block_return_values
    if block_return_values.include?(false)
        return false
    else
        return true
    end
end

nums = [1,2,3,4]
my_all?(nums) {|i| i < 2}
