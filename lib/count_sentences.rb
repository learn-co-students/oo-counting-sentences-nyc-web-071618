require 'pry'

class String

  SENTENCES = []
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
    self.split.count{|x| x.end_with?("!") || x.end_with?("?") || x.end_with?(".")}
  end
end
