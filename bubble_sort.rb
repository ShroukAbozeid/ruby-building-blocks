def bubble_sort(arr)
	sorted = true 
	n = arr.size - 1
	for i in 0...n
		sorted = true
		for j in 0.. n-i -1
			if arr[j] > arr[j+1]
				sorted = false
				arr[j] , arr[j+1] = arr[j+1] , arr[j]
			end
		end
		if sorted 
			break
		end
	end
	arr
end

puts bubble_sort([4,3,78,2,0,2])


def bubble_sort_by(arr)
	sorted = true 
	n = arr.size - 1
	for i in 0...n
		sorted = true
		for j in 0.. n-i -1
			if yield(arr[j] , arr[j+1]) > 0
				sorted = false
				arr[j] , arr[j+1] = arr[j+1] , arr[j]
			end
		end
		if sorted 
			break
		end
	end
	arr
end

x= bubble_sort_by(["hi","hello","hey"]) do |left,right|
   left.length - right.length
  end
puts x