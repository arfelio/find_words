class FindWords

	def find_words(word, filename)
		text = File.open(filename){ |file| file.read }
		words = text.split(' ')
		etalon = word.chars.sort
		etalon_size = etalon.length
		finded_words = words.select do |word|
	 		word.length.eql?(etalon_size) && word.chars.sort.eql?(etalon)
		end
	end

	def find_words2(word,filename)
		text = File.open(filename){ |file| file.read }
		words = text.split(' ')
		etalon = word.chars.sort
		finded_words = words.select { |word| word.chars.sort.eql?(etalon) }
	end
end

