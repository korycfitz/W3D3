def recursive_sum(num_1, num_2)

    return [] if num_2 < num_1
    return [num_1] if num_1 == num_2
    return [num_1] if num_2 == num_1 + 1

   recursive_sum(num_1, (num_2 - 1)) + [num_2 - 1]



end

# p recursive_sum(1, 5)
# p recursive_sum(1, 1)
# p recursive_sum(2, 1)
# p recursive_sum(0, 1)

def iterative_sum(num_1, num_2)
    return [num_1] if num_1 == num_2
    arr = []
    (num_1...num_2).each { |el| arr << el }
    arr
end

# p recursive_sum(1, 5)
# p recursive_sum(1, 1)
# p recursive_sum(2, 1)
# p recursive_sum(0, 1)
def exp1(b,n)
    return 1 if n == 0
    b * exp1(b, n-1)
end

def exp(b, n)
    #even n only
    return 1 if n == 0
    return b if n == 1
    return 0 if b == 0 && n == 1 ## return val
    if n.even?
        exp(b, n/2) * exp(b, n/2)
    else
        b * exp(b, (n-1)/2) * exp(b, (n-1)/2)
    end
end

# p exp(10, 20)

def deep_dup(array)

    return array if !array.is_a? Array
    new_arr = []
    array.each {|subarray| new_arr << deep_dup(subarray)}

    new_arr

end


array = [
  ["nuts", "bolts", "washers"],
  ["capacitors", "resistors", "inductors"]
]

p deep_dup(array)
