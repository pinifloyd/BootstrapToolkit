require "test_helper"

class InstallLessGeneratorTest < Rails::Generators::TestCase
  tests BootstrapToolkit::Generators::InstallLessGenerator
  destination File.expand_path("../../tmp", __FILE__)
  setup :prepare_destination
  
  test "Assert all files are properly copied" do
    run_generator

    assert_file "app/assets/stylesheets/frameworks/twitter_bootstrap/bootstrap.less"
    assert_file "app/assets/stylesheets/frameworks/twitter_bootstrap/styles.less"
    assert_file "app/assets/stylesheets/frameworks/twitter_bootstrap/mixins.less"
    assert_file "app/assets/stylesheets/frameworks/twitter_bootstrap/variables.less"
    assert_file "app/assets/stylesheets/frameworks/twitter_bootstrap/styles/alerts.less"
    assert_file "app/assets/stylesheets/frameworks/twitter_bootstrap/styles/modals.less"
    assert_file "app/assets/stylesheets/frameworks/twitter_bootstrap/styles/forms.less"
    assert_file "app/assets/stylesheets/frameworks/twitter_bootstrap/mixins/alerts.less"
    assert_file "app/assets/stylesheets/frameworks/twitter_bootstrap/mixins/opacity.less"
    assert_file "app/assets/stylesheets/frameworks/twitter_bootstrap/mixins/size.less"
  end
end