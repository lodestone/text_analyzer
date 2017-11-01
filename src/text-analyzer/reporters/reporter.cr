class Reporter
  def initialize(@documents : Array(Tuple(Document, Stats)))
  end
  def render
  end
end


require "./html/*"
