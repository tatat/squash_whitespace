require 'squash_whitespace'

module SquashWhitespace
  module Helpers
    def squash_whitespace(options = {}, &block)
      unless @squashing_whitespace
        begin
          @squashing_whitespace = true
          SquashWhitespace.squash_html(capture(&block).to_s, options)
        ensure
          @squashing_whitespace = false
        end
      else
        capture(&block).to_s
      end.html_safe
    end
  end
end
