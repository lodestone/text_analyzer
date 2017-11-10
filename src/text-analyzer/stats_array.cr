class StatsArray
  property texts : Array(Stats)
  def initialize(texts : Array(String))
    @texts = texts.map {|e| Stats.new(e)}
  end

  def flesh_kincaid_reading_level
    @texts.map{|e| e.flesh_kincaid_reading_level}
  end
end
