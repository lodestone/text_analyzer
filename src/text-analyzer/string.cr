class String
  def paragraphs : Array(String)
    split("\n").reject{|e| e.empty?}
  end

  def sentences : Array(String)
    split(".")
  end

  def words : Array(String)
    split(/\W+/)
  end

  def total_syllables
    scan(/[aiouy]+e*|e(?!d$|ly).|[td]ed|le$/).size
  end
end
