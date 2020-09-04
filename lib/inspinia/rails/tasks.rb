require 'rake'

namespace :inspinia do
  def insert_into_file(path, content, options = {})
    fl = File.read(path)

    if options[:before]
      fl.insert((fl.index(options[:before]) || 0), content)
    else
      fl << content.to_s
    end

    File.write(path, fl)
  end

  desc 'Install Inspinia assets.'
  task :install do
    assets_folder = Rails.root.join('app', 'assets')
    js_manifest   = "#{assets_folder}/javascripts/application.js"
    css_manifest  = "#{assets_folder}/stylesheets/application.css"
    scss_manifest = "#{assets_folder}/stylesheets/application.scss"

    insert_into_file js_manifest,
                     "//= require inspinia\n",
                     before: '//= require_tree .'

    if File.file?(css_manifest)
      insert_into_file css_manifest,
                       " *= require inspinia\n *= require inspinia_overrides\n",
                       before: ' */'
    else
      insert_into_file scss_manifest,
                       "@import \"inspinia\";\n@import \"inspinia_overrides\";\n",
                       before: '@import'
    end

    if ARGV.include?('--wonder-defaults')
      File.write("#{assets_folder}/stylesheets/inspinia_overrides.scss", File.read("#{Gem.loaded_specs['inspinia-rails'].full_gem_path}/app/assets/stylesheets/wonder_inspinia_overrides.scss"))
    else
      File.write("#{assets_folder}/stylesheets/inspinia_overrides.scss", "// Inspinia overrides file\n")
    end
  end

  desc 'Update inspinia gem using github read credentials.'
  task :update do
    logger = Logger.new(STDOUT)

    ok = system 'bundle config --local GITHUB__COM 29688471f4d1b0281a4f768ded2960df3675ef38 && bundle update inspinia-rails --quiet'

    if !ok
      logger.error 'Error updating inspinia gem'.upcase.red
    else
      logger.info 'Updated inspinia gem'.upcase.green
    end
  end
end
