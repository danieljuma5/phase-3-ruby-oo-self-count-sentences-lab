require 'pry'

class String
  def sentence?
   return false if self.nil? || self.empty?
    self.end_with?('.')
  end

  def question?
    return false if self.nil? || self.empty?
      self.end_with?("?")
  end

  def exclamation?
    return false unless self.is_a?(String)
    self.end_with?("!")

  end

  def count_sentences
    self.split(/[.!?]+/).count
  end
end

str1 = String.new("This is a string! It has three sentences. Right?")