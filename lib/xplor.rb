require "optparse"
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
  end
end
