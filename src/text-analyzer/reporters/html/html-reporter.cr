require "ecr"

class HtmlReporter < Reporter

  def render
    File.write("out.html", to_s)
  end

  ECR.def_to_s "src/text-analyzer/reporters/html/template.ecr"
end
