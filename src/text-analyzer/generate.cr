require "cli"
require "./reporters/*"

class Generate < Cli::Command
  class Options
    arg_array "files"
    string "--format", any_of: %w(html string), default: "string"

  end

  def run
    documents = args.files
                .map {|e| Document.new e }
                .map {|document| {document, Stats.new(document.text)} }
    reporter.new(documents).render
  end

  def reporter : Reporter.class
    if(args.format == "html")
      HtmlReporter
    else
      StringReporter
    end
  end

end
