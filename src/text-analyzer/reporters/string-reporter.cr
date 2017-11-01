class StringReporter < Reporter
  def render
    @documents.map do |(doc, stats)|
      " #{doc.name}
      Number of Paragraphs: #{stats.total_paragraphs}
      Number of Sentences: #{stats.total_sentences}
      Number of Words: #{stats.total_words}
      Number of Syllables: #{stats.total_syllables}
      Flesh Reading Ease: #{stats.flesh_reading_ease}
      Flesh Kincaid Reading Level: #{stats.flesh_kincaid_reading_level}
      #{stats.word_table.first(20).map {|(k,v)| "#{k}: #{v}"}}
      "
    end
  end
end
