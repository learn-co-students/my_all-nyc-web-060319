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

#Breakdown of what is happening

#The all? built-in method evluates an array to see if all of its elements pass a certain test,
#given in the form of a block. If all elements pass (evaluate as true) for the test, it returns true.
#If even one element fails the test (evals false) then false is returned.
#Ex. [1,2,3,4].all? {|num| num.is_a? Integer} returns true because all elements are integers
#Ex. 2 [1,2,3,4].all? {|num| num % 2 == 0} returns false because even though some nums divisble by 2, not all of them are. 

#In lieu of .map, using a while <array.length to iterate through array (using i+=1 to iterate to go through each index arr[i])
#block_return_values is a new array we will add things to
#Every iteration, use yield(i) to use i as arg for block given to method
#Going to add the result of block (either T/F) to block_return_values array, then increase i by i for next iteration
#Once that is done, we will look at the block_return_values array and see if any elements are false
#If any elements ARE false, we return false
#If NO elements are false, return true
