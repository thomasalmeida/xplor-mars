require "optparse"
require "xplor/explore"
require "xplor/version"

module Xplor
  class Cli
    def call
      params = {}
      OptionParser.new do |parser|
        parser.banner = "Usage: ruby [options]"

        parser.on("-i", "--input PATH")
        parser.on("-o", "--output PATH")
      end.parse!(into: params)

      response = Explore.call(params[:input])

      if params[:output].nil?
        puts response

        return
      end

      File.open(params[:output], "w+") { |file| file.write(response + "\n") }
    end
  end
end
