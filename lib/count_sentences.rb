require 'pry'

class String

  def sentence?
    self[-1] == "."
  end

  def question?
    self[-1] == "?"
  end

  def exclamation?
    self[-1] == "!"
  end

  def count_sentences
    new_string = self.split(/[?!.]/)
    new_string.delete_if do |sentence|
      sentence == ""
    end
    return new_string.length
  end
end
