require "bundler/gem_tasks"

namespace :prepare do
  desc "Prepare LESS files"
  task :less do
    sh "cp ../Main/less/*.less        bundle/LESS/styles"
    sh "cp ../Main/less/mixins/*.less bundle/LESS/mixins"

    sh "mv bundle/LESS/styles/variables.less bundle/LESS/"
    sh "mv bundle/LESS/styles/mixins.less    bundle/LESS/"
    sh "mv bundle/LESS/styles/theme.less     bundle/LESS/"

    sh "mv bundle/LESS/styles/bootstrap.less bundle/Back/"
  end
end