###
# Compass
###

compass_config do |config|
  config.output_style = :nested
  config.line_comments = false
end

# Make sure that all partials are rendered without a layout
page "/partials/*", :layout => false

###
# Page options, layouts, aliases and proxies
###
set :css_dir, 'assets/css'
set :js_dir, 'assets/js'
set :images_dir, 'assets/img'

set :haml, :attr_wrapper => "\""

###
# Helpers
###
activate :livereload
activate :directory_indexes
activate :automatic_image_sizes

# Build-specific configuration
configure :build do

  # Use relative URLs
  activate :relative_assets
end
