require "markd"
class MardownParser
  def initialize
    @options = Markd::Options.new
    @renderer = CustomMDParser.new @options
  end

  def parse(text)
    document = Markd::Parser.parse(text, @options)
    html = @renderer.render(document)
  end
end

class CustomMDParser <  Markd::Renderer
  def heading(node, entering)
    out(node.text)
  end

  def list(node, entering)
    out(node.text)
  end

  def item(node, entering)
    out(node.text)
  end

  def block_quote(node, entering)
    out(node.text)
  end

  def thematic_break(node, entering)
    out(node.text)
  end

  def code_block(node, entering)
    out(node.text)
  end

  def code(node, entering)
    out(node.text)
  end

  def html_block(node, entering)
    out(node.text)
  end

  def html_inline(node, entering)
    out(node.text)
  end

  def paragraph(node, entering)
    out("\n#{node.text}")
  end

  def emphasis(node, entering)
    out(node.text)
  end

  def soft_break(node, entering)
    out(node.text)
  end

  def line_break(node, entering)
    out(node.text)
  end

  def strong(node, entering)
    out(node.text)
  end

  def link(node, entering)
    out(node.text)
  end

  def image(node, entering)
    out(node.text)
  end

  def text(node, entering)
    out(node.text)
  end
end
