def caesar_cipher(str,factor)
	ret = ""
	str.each_char do |c|
		asc = c.ord
		if asc >=65 && asc <= 90
			mod = 91
			asc = ((asc + factor) % mod )
			if asc <65
				asc+=65
			end
			ret += asc.chr
		elsif asc >=97 && asc<=122
			mod = 123
			asc = ((asc + factor) % mod)
			if asc <97
				asc+=97
			end
			ret += asc.chr
		else
			ret +=c
		end
		
	end
	return ret
end

puts caesar_cipher("What a string!", 5)