  module Enumerable
    def my_each
      for x in self
     	yield(x)
      end
      self
    end

    def my_each_with_index
    	for i in 0...self.size
    		yield(self[i],i)
    	end
    	self
    end
 	
 	def my_select
 		ret = []
 		self.my_each do |x|
 			ret << yield(x)
 		end
 		ret
 	end

 	def my_all?
 		bool =true
 		self.my_each do |z|
 			bool = bool && yield(z)
 		end
 		bool
 	end

 	def my_any?
 		bool =false
 		self.my_each do |z|
 			bool = bool || yield(z)
 		end
 		bool
 	end

 	def my_none?
 		return ! self.my_any?
 	end

 	def my_count
 		self.size
 	end

 	def my_map(proc=false)
 		ret = []
 		self.my_each do |x|
 			if proc.is_a?(Proc)
 				ret << proc.call(x)
 			else
 				ret << yield(x)
 			end
 		end
 		ret
 	end

 	def my_inject(df=nil)
 		df = self[0] if df.nil?
 		for x in self
 			df = yield(df,x)
 		end
 		df
 	end


  end

def multiply_els(arr)
	arr.my_inject(1){|result, element| result * element}
end