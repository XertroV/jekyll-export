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
  end
end

Liquid::Template.register_filter(Jekyll::ExportFilters)
