
=begin
Project: Bubble Sort
Objective Sort an array using the bubble sort algorithm.

Implementation:
1. Create a function that accepts an array.
2. The algorithm includes two loops.
3. The outer loop iterates per the array length
4. The second array iterates through the array and check if the for smaller value. If true, swap the values.
=end
def bubble_sort(input_array)
    result_array = []
    array_length =  input_array.length
    
    #outer loop iterates as per the array length
    outer_loop_counter  =  0
    while outer_loop_counter < array_length do

        #inner loop iterates through one less per each loop
        inner_loop_counter = 0
        while inner_loop_counter < array_length-1 and inner_loop_counter < array_length - outer_loop_counter do
            placeholder = 0
            #if the left-side element is larger than the right-side element, swap them.
            if input_array[inner_loop_counter] > input_array[inner_loop_counter+1] and 
                placeholder = input_array[inner_loop_counter]
                input_array[inner_loop_counter] = input_array[inner_loop_counter+1] 
                input_array[inner_loop_counter+1] = placeholder
            end
            inner_loop_counter += 1
        end
        outer_loop_counter += 1
    end
    puts(input_array)
    input_array
end

bubble_sort([4,3,78,2,0,2])