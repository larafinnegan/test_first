class Book
	attr_reader :title

	def title=(input)
		@title = newTitle(input)
	end

	def newTitle(full_title)
		words = full_title.split(" ")
		conjunctions = ["a","and","or","the","in","of","an"]
		words[0].capitalize!
        words.each do |x|
			if !conjunctions.include?(x)
				x.capitalize!
			end
		end
		words.join(" ")
	end
end