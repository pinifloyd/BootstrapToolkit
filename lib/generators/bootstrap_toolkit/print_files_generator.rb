require "rails/generators/base"

module BootstrapToolkit
  module Generators
    class PrintFilesGenerator < Rails::Generators::Base

      desc <<-DESC.strip_heredoc
        Print files by specified type. It will show all files as tree:

          |-- twitter_bootstrap
          |   |-- mixins
          |   |   |-- alerts.less
          |   |   |-- ...
          |   |-- styles
          |   |   |-- alerts.less
          |   |   |-- ...
          |   |-- mixins.less
          |   |-- styles.less
          |   |-- ...

      DESC

      class_option :type, type: :string, required: true, 
        desc: "Type one of supported types: less, scss, css, js."

      def print_less_files
        options[:type].downcase!

        print_elements(source_path) if options[:type] == "less"
      end

    private
      
      def print_elements(source, level = 0)
        puts "|-- twitter_bootstrap" if level == 0

        source.children.each do |source|
          level += 1
          print_by_level(source, level)
          print_elements(source, level) if source.directory?
          level -= 1
        end
      end

      def print_by_level(source, level)
        puts "|   " * level + "|-- " + File.basename(source)
      end

      def source_path
        source = "../../../../bundle/#{options[:type]}"
        Pathname.new File.expand_path(source, __FILE__)
      end

    end
  end
end