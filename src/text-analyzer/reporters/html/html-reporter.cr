require "ecr"

class HtmlReporter < Reporter

  def render
    File.write("out.html", to_s)
  end

  def javascript_include_tag(file)
    "<script> #{File.read("src/text-analyzer/reporters/html/#{file}")}</script>"
  end

  ECR.def_to_s "src/text-analyzer/reporters/html/template.ecr"
end
