require 'rspec'
require 'insult_clinic'

describe InsultClinic do
  describe ".new" do
    it "generates new insult object" do
      insult = InsultClinic.new
      expect(insult).to be_a(InsultClinic)
    end
  end

  let(:insult) { InsultClinic.new }

  describe "#random_insult" do
    it "returns a string" do
      expect(insult.random_insult).to be_a(String)
    end

    it "contains adjectives listed in the given array" do
      adjectives = insult.adjective
      new_arr = []
      adjectives.each do |adj|
        if adj.include?(' ')
          new_arr << adj.split(' ')
        else
          new_arr << adj
        end
      end
      adjectives = new_arr.flatten

      answer = insult.split(' ').any? {|word| adjectives.include?(word)}
      expect(answer).to be(true)
    end

    it "contains nouns listed in the given array" do
      nouns = insult.noun
      new_arr = []
      nouns.each do |noun|
        if noun.include?(' ')
          new_arr << noun.split(' ')
        else
          new_arr << noun
        end
      end
      nouns = new_arr.flatten
      answer = insult.split(' ').any? {|word| nouns.include?(word)}
      expect(answer).to be(true)
    end

    it "contains targets listed in the given array" do
      expect(insult.random_insult).to include("You")
    end
  end
end
