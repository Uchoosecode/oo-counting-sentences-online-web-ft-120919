require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    sentence_count = self.split(/[.?!]/).reject do |string| 
      string.empty?
    end
      return sentence_count.length
  end
end