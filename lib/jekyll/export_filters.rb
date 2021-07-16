# frozen_string_literal: true

module Jekyll
  module ExportFilters
    extend self
    def rstrip_slash(path)
      path.delete_suffix("/")
    end

    def contains_html(body)
      body.match?(%r!<[^ >]+( .*)?/?>!)
    end

    def date_to_ts(date)
      date.to_i
    end
  end

  class CurrentTimeTag < Liquid::Tag
    def initialize(tag_name, text, tokens)
      super
      @text = text
    end

    def render(_context)
      "#{Time.now.to_i}"
    end
  end
end

Liquid::Template.register_tag("current_date", Jekyll::CurrentTimeTag)
Liquid::Template.register_filter(Jekyll::ExportFilters)
