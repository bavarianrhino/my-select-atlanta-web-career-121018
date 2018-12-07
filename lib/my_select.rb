def my_select(collection)
  if block_given?
    i = 0
    
    return_collection = []
    while i < collection.length
      yield if collection[i] === true
              return_collection.push(collection[i])
      i = i + 1 
    end
  end
  return_collection
end


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
