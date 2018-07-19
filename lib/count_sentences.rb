require 'pry'

class String

  def sentence?
    self[self.size-1] == '.'
  end

  def question?
    self[self.size-1] == '?'
  end

  def exclamation?
    self[self.size-1] == '!'
  end

  def count_sentences
    words = self.split(" ")
    count = words.count {|word| word[word.size-1] == '!' || word[word.size-1] == '?' || word[word.size-1] == '.'}
  end
end
