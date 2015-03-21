require 'jekyll'
require 'org-ruby'


module Jekyll
  module Converters

      class Org < Converter
        safe true

        def matches(ext)
          ext =~ /^\.org$/i
        end

        def output_ext(ext)
          '.html'
        end

        def convert(content)
          ::Orgmode::Parser.new(content).to_html
        end

      end
    end
end
