class Book
# write your code here

	def title= book_name
	  @title = titleize book_name
	end

	def title
		@title
	end

	def titleize string
		exceptions = ["a", "an", "the", "and", "but", "for", "amid", "as", "at", "atop", "by", "down", "from", "in", "into", "like", "mid", "near", "next", "of", "off", "on", "out", "over", "pace", "past", "per", "plus", "sans", "than", "till", "to", "unto", "up", "upon", "via", "with"]

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

end
