require 'pry'

class String

  def sentence?
    end_with?('.')
  end

  def question?
    end_with?('?')
  end

  def exclamation?
    end_with?('!')
  end

  def count_sentences
    sentences = split(/\.|\?|\!/)
    sentences.map { |word|
      word.length <= 1 ? sentences.delete(word) : word
    }.count
  end
end
