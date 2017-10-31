class StringReporter
  def initialize(@stats : Stats)
  end

  def render
    "
      Number of Paragraphs: #{@stats.num_of_paragraphs}
      Number of Sentences: #{@stats.num_of_sentences}
      Number of Words: #{@stats.num_of_words}
      Number of Syllables: #{@stats.num_of_syllables}
      Flesh Reading Ease: #{@stats.flesh_reading_ease}
      Flesh Kincaid Reading Level: #{@stats.flesh_kincaid_reading_level}
      #{@stats.word_table}
    "
  end
end
