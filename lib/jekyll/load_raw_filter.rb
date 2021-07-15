module Jekyll
  module LoadRaw
    extend self

    def load_raw(path)
      File.read(path)
    end
  end
end

puts "loaded"
Liquid::Template.register_filter(Jekyll::LoadRaw)
