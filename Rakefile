require 'bundler/gem_tasks'
require 'rspec/core/rake_task'
require 'logger'

RSpec::Core::RakeTask.new(:spec)

task default: :spec

desc 'Upgrade inspinia dependencies'
task :upgrade_dependencies do
  paths = {
    'node_modules/jquery-slimscroll/jquery.slimscroll.min.js' => 'app/assets/javascripts/inspinia_dependencies/slimscroll.min.js',
    'node_modules/metismenu/dist/metisMenu.min.js' => 'app/assets/javascripts/inspinia_dependencies/metismenu.min.js',
  }

  logger = Logger.new(STDOUT)

  logger.info 'Updating dependencies packages'
  sh 'yarn upgrade'
  logger.info 'Done upgrading packages'

  paths.each do |module_path, destiny_path|
    logger.info "Writing module '#{module_path}' to '#{destiny_path}'."
    File.write(destiny_path, File.read(module_path))
    logger.info "Done writing '#{destiny_path}'."
  end

  logger.info 'Done upgrading all packages!'
end
