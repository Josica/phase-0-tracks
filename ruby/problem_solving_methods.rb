#Release 0: Implement a Simple Search

def search_array(arr, n)
  i = 0
  while i < arr.length
  if arr[i] == n
    index = i
  end
  i += 1
end
  index
end

#Release 1: Calculate Fibonacci Numbers

def fibs(num)
 x = 0
 y = 1
 arr = []

 num.times { 
   z = x + y 
   arr << x
   x = y
   y = z
 }
 arr
end


#Release 2: Sort an Array
#First take the input of the array from the user 
#Figure out how long the array is (length)
#left element > right element , if left is bigger than we swap 
# if it is less than we keep it the same 
# looping until the array is sorted

def bubble_sort(arr)
 sorted = false
 until sorted
    sorted = true
    (arr.length - 1).times do |index|
     if arr[index] > arr[index + 1]
       arr[index], arr[index + 1] = arr[index + 1], arr[index]
       sorted = false 
     end
   end
 end
 arr
end