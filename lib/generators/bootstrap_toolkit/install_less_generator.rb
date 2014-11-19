require "rails/generators/base"

module BootstrapToolkit
  module Generators
    class InstallLessGenerator < Rails::Generators::Base

      desc <<-DESC.strip_heredoc
        Create BootstrapToolkit initializer if it doesn't exist into
        config/initializers as bootstrap_toolkit.rb. Also BootstrapToolkit
        create next folder in your application and copy all LESS files into:

          app/assets/stylesheets/frameworks/twitter_bootstrap

      DESC

      class_option :files, type: :array, desc: <<-DESC.strip_heredoc
        Type LESS files which you want copy into your application.
      DESC

      def copy_files
        make_directory destination_path

        if options[:files].blank?
          FileUtils.cp_r source_path, destination_path(:twitter_bootstrap)
        else
          # TODO: copy cpecified less files
        end
      end

    private

      def source_path
        File.expand_path "../../../../bundle/less/", __FILE__
      end

      def destination_path(name = nil)
        Rails.root.join "app/assets/stylesheets/frameworks/#{name}"
      end

      def make_directory(destination)
        FileUtils.mkdir_p(destination) unless Dir.exist?(destination)
      end

    end
  end
end