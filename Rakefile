require "bundler/gem_tasks"

namespace :prepare do
  desc "Prepare LESS files"
  task :less do
    sh "cp ../Main/less/*.less        bundle/less/styles"
    sh "cp ../Main/less/mixins/*.less bundle/less/mixins"

    sh "mv bundle/less/styles/variables.less bundle/less/"
    sh "mv bundle/less/styles/mixins.less    bundle/less/"
    sh "mv bundle/less/styles/theme.less     bundle/less/"

    sh "mv bundle/less/styles/bootstrap.less bundle/back/"
  end
end