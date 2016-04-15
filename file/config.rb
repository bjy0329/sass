Encoding.default_external = "UTF-8" if defined? Encoding

# Require any additional compass plugins here.
require 'sass-media_query_combiner'

# Set this to the root of your project when deployed:
http_path = ""
css_dir = "front/css"
sass_dir = "front/sass"
images_dir = ""
javascripts_dir = ""
sass_options = {:sourcemap => true,}
enable_sourcemaps = true 

# You can select your preferred output style here (can be overridden via the command line):
# output_style = :expanded or :nested or :compact or :compressed
output_style = :expanded

# To enable relative paths to assets via compass helper functions. Uncomment:
relative_assets = false

# To disable debugging comments that display the original location of your selectors. Uncomment:
line_comments = false

# If you prefer the indented syntax, you might want to regenerate this
# project again passing --syntax sass, or you can uncomment this:
# preferred_syntax = :sass
# and then run:
# sass-convert -R --from scss --to sass sass scss && rm -rf sass && mv scss sass
preferred_syntax = :scss
# cache = false


on_sprite_saved do |filename|
	if File.exists?(filename)
		FileUtils.cp filename, filename.gsub(%r{-s[a-z0-9]{10}\.png$}, '.png')
		FileUtils.rm_rf(filename)
	end
end

on_stylesheet_saved do |filename|
	if File.exists?(filename)
		css = File.read filename
		File.open(filename, 'w+') do |f|
		f << css.gsub(%r{(?<start>-s)(?<hash>[a-z0-9]{10})(?<file>\.png)}, '.png?v=\k<hash>')
		end
	end
end

# module Sass::Script::Functions
# 	def timestamp()
# 		return Sass::Script::String.new(Time.now.strftime("%Y%m%d%H%M"))
# 	end
# end