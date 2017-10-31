require "cli"

class Generate < Cli::Command
  class Options
    arg_array "files"
  end

  def run
    parser = MardownParser.new
    files = args.files
                .map {|e| File.read e }
                .map {|e| parser.parse e }
                .each {|e| report(e)}
  end

  def report(file)
    paragraphs = file.split("\n").reject{|e| e.empty?}

    stats = Stats.new(paragraphs)

    reporter = StringReporter.new(stats)
    puts(reporter.render)
  end
end
