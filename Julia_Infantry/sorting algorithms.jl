function insertion_sort(arr)
  n = length(arr)  # get the length of the input array
  for i in 2:n
    key = arr[i]   # assign the value of current element to key 
    j = i - 1  # initialize the index j as i-1
    while j > 0 && arr[j] > key  # while j is greater than 0 and the value at jth index is greater than key
      arr[j+1] = arr[j]  # move the value at jth index one position ahead
      j -= 1  # decrement j by 1
    end
    arr[j+1] = key  # insert the key at the correct position
  end
  return arr
end

function selection_sort(arr)
  n = length(arr)  # get the length of the input array
  for i in 1:n-1  # outer loop that iterates through the entire array
    min_idx = i  # initialize the minimum index as the current index i
    for j in i+1:n  # inner loop that starts from the next element of the outer loop
      if arr[j] < arr[min_idx]  # if the current element is less than the minimum element
        min_idx = j  # update the minimum index to the current index
      end
    end
    arr[i], arr[min_idx] = arr[min_idx], arr[i]  # swap the current element with the minimum element
  end
  return arr
end

###########################

arr = [5, 2, 3, 1, 4]
sort(arr, rev=false) # default, uses tim sort(insertion/merge sort hybrid)
sort!(arr) # return original array
print(sortperm(arr)) # return the indices of the sorted array
sort(arr, alg=InsertionSort) # insertion sort
sort(arr, alg=QuickSort) # quick sort

