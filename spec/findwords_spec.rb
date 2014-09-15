require './findwords.rb'
require 'rspec'

describe "Find words method in FindWords class" do
	before(:all) { @wordsarray = FindWords.new }

	it "must return array of finded words" do
		expect(@wordsarray.find_words2("text","test_text.txt")).to be_kind_of(Array)
	end
	it "must include words from test_text file and word that we give to this method" do
		expect(@wordsarray.find_words2("text","test_text.txt")).to include("text","xett")
	end
	it "another words not be included at this array" do
		expect(@wordsarray.find_words2("text","test_text.txt")).not_to include("texx","this")
	end
	it "must return all worlds with letters from the word that was given" do
		expect(@wordsarray.find_words2("text","test_text.txt").count).to eq(8)
	end
end