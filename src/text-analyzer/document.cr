class Document

  def initialize(@file_name : String)
  end

  def text
    @_text ||= parser.parse(File.read(@file_name)).as(String)
  end

  def parser
    @_parser ||= MardownParser.new
  end

  def name
    @file_name.split("/").last.split(".").first
  end
end
