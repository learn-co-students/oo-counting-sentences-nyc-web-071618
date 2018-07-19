require 'pry'

class String

def initialize(sentence)
  @sentence = sentence
end

  def sentence?
self[-1] == "."

end


  def question?
self[-1] =="?"
  end

  def exclamation?
self[-1] == "!"
  end

  def count_sentences
self.squeeze('.?!').count('.!?')
# squeeze is a method that lets push together any multiples of the arguement given in a string.
#count will now count those same elements we squeezed together 
  end
end
