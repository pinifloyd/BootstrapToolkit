require "rails/generators/base"

module BootstrapToolkit
  module Generators
    class InstallLessGenerator < Rails::Generators::Base

      desc <<-DESC.strip_heredoc
        Create folder in your application and copy all LESS files into:

          app/assets/stylesheets/frameworks/twitter_bootstrap

      DESC

      class_option :files, type: :array, desc: <<-DESC.strip_heredoc
        Type LESS files which you want copy into your application.
      DESC

      FILE_TYPE   = ".less"
      DESTINATION = %w(app assets stylesheets frameworks twitter_bootstrap)
      SOURCE_PATH = %w(.. .. .. .. bundle less)

      def copy_files
        prepare_options; copy_recurcive(source_path)
      end

    private

      def source_path
        Pathname.new File.expand_path(File.join(SOURCE_PATH), __FILE__)
      end

      def destination_path
        Rails.root + File.join(DESTINATION)
      end

      def prepare_options
        options[:files].each.with_index do |file, index|
          options[:files][index] = File.basename(file, FILE_TYPE)
        end unless options[:files].blank?
      end

      def should_copy?(source)
        source_name = File.basename(source, FILE_TYPE)

        return true if options[:files].blank?
        return true if options[:files].include?(source_name)
      end

      def copy_recurcive(source, depth = 0, parents = [])
        destination = File.join(destination_path, parents)

        source.each_child do |source|
          depth += 1
          
          if source.file? && should_copy?(source)
            FileUtils.mkdir_p(destination) unless Dir.exist?(destination)
            FileUtils.cp(source, destination)
          end

          if source.directory?
            copy_recurcive(source, depth, source.to_s.split("/").last(depth))
          end

          depth -= 1
        end
      end

    end
  end
end