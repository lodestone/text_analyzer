class Stats
  property sentences : Array(String), words : Array(String), paragraphs : Array(String)

  def initialize(@paragraphs)
    @sentences =  @paragraphs.flat_map {|f| f.split(".")}
    @words = @paragraphs.flat_map {|f| f.split(/\W+/)}
  end

  def num_of_sentences
    @sentences.size
  end

  def num_of_words
    @words.size
  end

  def num_of_paragraphs
    @paragraphs.size
  end

  def num_of_syllables
    @words.map{|e| e.scan(/[aiouy]+e*|e(?!d$|ly).|[td]ed|le$/).size }.sum
  end

  def flesh_reading_ease
    206.835 - 1.05 * (num_of_words / num_of_sentences.to_f) - 84.6 * (num_of_syllables / num_of_words.to_f)
  end

  def flesh_kincaid_reading_level
    0.39 * (num_of_words / num_of_sentences.to_f) + 11.8 * (num_of_syllables / num_of_words.to_f) - 15.59
  end

  def word_table
    words.group_by{|e| e.downcase }.map{|k,v| [k, v.size]}.sort_by{|(k,v)| -v.as(Int)}.map {|(k,v)| "#{k}: #{v}"}
  end
end
