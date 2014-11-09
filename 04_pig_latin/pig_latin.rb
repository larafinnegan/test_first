def translate(phrase)
	phrase=phrase.split(" ")
	vowels = ["a","e","i","o","u"]
	response=""
	counter=0
	while counter < phrase.length do
		word = phrase[counter]
		if vowels.include?(word[0])
			response += word + "ay "
		elsif (!vowels.include?(word[0]) && !vowels.include?(word[1]) && !vowels.include?(word[2])) || (!vowels.include?(word[0]) && word[1]=="q" && word[2]=="u")
			response += word[3..-1] + word[0..2] + "ay "
		elsif (!vowels.include?(word[0]) && !vowels.include?(word[1])) || (word[0]=="q" && word[1]=="u")
			response += word[2..-1] + word[0..1] + "ay "
		else 
			response += word[1..-1] + word[0] + 'ay '
		end
		counter += 1
	end
	response.rstrip
end