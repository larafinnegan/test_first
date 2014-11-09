def echo(phrase)
	phrase
end

def shout(phrase)
	phrase.upcase
end

def repeat(word, n=2)
	(((word + " ") *n)).rstrip
end

def start_of_word(word, n=1)
	word[0...n]
end

def first_word(phrase)
	input=phrase.split(" ")
	input[0]
end

def titleize(word)
	input=word.split(" ")
	input.each do |x|
		if x != "and" && x != "the" && x != "over"
			x.capitalize!
		end
	end
	input[0].capitalize!
	input.join(" ")
end

