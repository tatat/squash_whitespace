module SquashWhitespace
  class << self
    def squash_html(html, options = {})
      html = html.gsub(/\A\s+|\s+\Z/, '').gsub(/>\s+</, '><').gsub(/^\s+</, '<')
      html = html.gsub(/>\s*(.*?)\s*</, '>\1<') if options[:strip]
      html
    end
  end
end

require 'squash_whitespace/railtie' if defined?(::Rails)
