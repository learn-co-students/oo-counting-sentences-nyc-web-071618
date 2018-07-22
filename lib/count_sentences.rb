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
    new_sentence = self.split(/[?.!]/)
    new_sentence.delete("")
    new_sentence.count
  end



end
