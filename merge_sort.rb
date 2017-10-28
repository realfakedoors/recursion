#a method that takes in an array and returns a sorted array, using a recursive merge sort methodology:

def merge_sort(ary)
  return ary if ary.length == 1
  
  middle = ary.length/2
  left,right = ary[0...middle], ary[middle...ary.length]
  
  left = merge_sort(left)
  right = merge_sort(right)
  
  merge(left,right)
end

def merge(left,right)
  sorted_ary = []
  
  until left.empty? || right.empty?
    if left[0] < right[0]
      sorted_ary << left.shift
    else
      sorted_ary << right.shift
    end
  end
  
  sorted_ary += left + right
end