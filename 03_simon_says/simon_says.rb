#write your code here
def echo string
	return "#{string}"
end

def shout string
	return "#{string.upcase}"
end

def repeat string, num=2
	return [string] * num * " "
end

def start_of_word string, num
	position = 0
	result = []
	while num > 0
		result.push(string[position])
		num -= 1
		position += 1
	end
	return result.join
end

def first_word string
	array = string.split(" ")
	return array[0]
end

def titleize string
	exceptions = ["a", "an", "the", "and", "but", "for", "amid", "as", "at", "atop", "by", "down", "from", "in", "into", "like", "mid", "near", "next", "off", "on", "out", "over", "pace", "past", "per", "plus", "sans", "than", "till", "to", "unto", "up", "upon", "via", "with"]

	title = []
	string = string.capitalize
	words = string.split(" ")
	words.each do |word|
		if exceptions.include? word
			word = word.downcase
			title.push(word)
		else
			word = word.capitalize
			title.push(word)
		end
	end
	return title.join(" ")
end
