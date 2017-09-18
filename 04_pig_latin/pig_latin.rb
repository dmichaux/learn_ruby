#write your code here
def translate string
	consonant = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
	vowels = ["a", "e", "i", "o", "u"]
	ending = "ay"
	translation = []
	words = string.split(" ")
	words.each do |item|
		word = item.split("")
		if vowels.include? word[0]
			word.push(ending)
		elsif consonant.include? word[0]
			if (word[0] === "q")
				word = word.rotate(2)
				word.push(ending)
			else
				while consonant.include? word[0]
					if (word[0] === "q")
						word = word.rotate
					end
					word = word.rotate
				end
				word.push(ending)
			end
		end
		word = word.join("")
		translation.push(word)
	end
	translation = translation.join(" ")
	return translation
end
