def stock_picker(arr)
	mx_profit = arr.min - arr.max
	mn_index = 0
	mx_index = 0
	arr.each_with_index do |val,index|
		mn = val
		mx = arr[index..-1].max 
		profit = mx - mn
		if profit >= mx_profit
			mx_profit = profit
			mn_index = index
			mx_index = arr.index(mx)
		end
	end
	return  Array.new([mn_index,mx_index])
end

 x = stock_picker([17,3,6,9,15,8,6,1,10])
