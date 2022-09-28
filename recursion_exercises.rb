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
