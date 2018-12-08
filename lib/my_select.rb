def my_select(collection)
  if block_given?
    i = 0
    
    dont_return = []
    return_collection = []
    while i < collection.length
      if yield(collection[i]) == true
        return_collection << (collection[i])
        i = i + 1
      else
        dont_return << (collection[i])
        i = i + 1
      end
    end
    return_collection
  end
end

# my_select([1, 2, 3, 4, 5])

# def my_select(collection)
#   if block_given?
#     i = 0
    
#     selected_arr_items = []
#     while i < collection.length
#       selected_arr_items.push (yield(collection[i] == true))
#       i = i + 1 
#     end
#   end
#   return selected_arr_items
# end
