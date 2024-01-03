require "rutie"
require "fast_blank"

Rutie.new(:whichlang_rb).init "Init_whichlang", __dir__

module Whichlang
  class << self
    def detect(text)
      return nil if text.nil? || text.blank_as?

      detect_language(text)
    end
  end
end
