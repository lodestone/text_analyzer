class Stats
  property text

  def initialize(@text : String)
  end

  def total_words : Float
    @text.words.size.to_f
  end

  def total_sentences : Float
    @text.sentences.size.to_f
  end

  def total_syllables : Float
    @text.total_syllables.to_f
  end

  def total_paragraphs : Float
    @text.paragraphs.size.to_f
  end


  def flesh_reading_ease
    206.835 - 1.05 * (total_words / total_sentences) - 84.6 * (total_syllables / total_words)
  end

  def flesh_kincaid_reading_level
    0.39 * (total_words / total_sentences) + 11.8 * (total_syllables / total_words) - 15.59
  end

  def word_table
    @text.words.group_by{|e| e.downcase }.map{|k,v| [k, v.size]}.sort_by{|(k,v)| -v.as(Int)}
  end
end
