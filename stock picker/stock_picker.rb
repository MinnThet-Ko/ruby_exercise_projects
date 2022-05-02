=begin
Project: Stock Picker
Objectives: Pick the best day to buy and sell stock.
Note: Watch out if the best day to buy comes after the best day to sell.

Implementation:
1. Create a function that accepts an integer array.
2. Create two variable for the best day to buy and best day to sell.
3. Set the first item of the array as the two variable.
4. First find the best day to sell.
5. Find the best day to buy.
=end

def stock_picker(stock_array)
    best_sell_day = Hash[:stock => 0, :index => 0]
    best_buy_day = Hash[:stock => 0, :index => 0]

    #find the best day to sell stock
    stock_array.each_with_index do |stock,index|
        if best_sell_day[:stock] < stock and index != 0
            best_sell_day[:stock] = stock
            best_sell_day[:index] =  index
        end
    end

    #pick the best to buy stock 
    stock_array.each_with_index do |stock,index|
        if best_buy_day[:stock] == 0  
            best_buy_day[:stock] = stock
            best_buy_day[:index] =  index
        elsif best_buy_day[:stock] > stock and index < best_sell_day[:index]
            puts stock 
            puts index
            best_buy_day[:stock] = stock
            best_buy_day[:index] =  index
        end
    end
    puts Array[best_buy_day[:index], best_sell_day[:index]]
    Array.new(best_buy_day[:index], best_sell_day[:index])
end

stock_picker([17,8,6,9,15,8,6,1,18])