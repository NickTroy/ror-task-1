# This class contains simple methods, working with arrays and strings
class RorTask1
  # Recursive method #how_many_threes,
  # it returns count when num can't be divided by 3 without remainder.
  # If num can be divided without remainder, calls itself with parameters num / 3, count + 1.
  def how_many_threes num, count = 0
    return count if num % 3 != 0
    how_many_threes num / 3, count + 1
  end

  def max_number_in_text text
    array_of_numbers = text.split(/[^0-9.]/).reject(&:empty?).map(&:to_f)
    # splits text into array of separated numbers, removing empty strings and leading each number to Float
    array_of_numbers.max
  end

  def even_odd_elements arr
    arr.each_with_index { |n, i| puts n if i.even? } # printing numbers with even indexes
    arr.each_with_index { |n, i| puts n if i.odd? } # printins numbers with odd indexes
    return
  end

  def odd_elements_addition arr
    return arr if arr.count < 3
    middle_part = arr[1..-2].map { |n| n.odd? ? n + arr.last : n }
    # adding last element to all odd elements except first and last
    middle_part.push(arr.last).unshift(arr.first)
  end

  def sum_between_zeros arr
    first_zero_index = arr.find_index { |n| n == 0 }
    arr.delete_at(first_zero_index) # removing first element equal to zero, saving his index
    second_zero_index = arr.find_index { |n| n == 0 } # detecting second zero element
    arr[first_zero_index..(second_zero_index - 1)].inject(0) { |sum, n| sum + n }
  end
end
