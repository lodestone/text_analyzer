require "cli"

class Generate < Cli::Command
  class Options
    arg_array "files"
    string "--format", any_of: %w(html string)

  end

  def run
    files = args.files
                .map {|e| Document.new e }
                .each {|e| report(e)}
  end

  def report(document)
    stats = Stats.new(document.text)

    reporter = StringReporter.new(document, stats)
    puts(reporter.render)
  end
end
