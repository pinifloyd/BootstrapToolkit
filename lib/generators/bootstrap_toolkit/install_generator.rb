require "rails/generators/base"

module BootstrapToolkit
  module Generators
    class InstallGenerator < Rails::Generators::Base

      # TODO: change description
      desc <<-DESC.strip_heredoc
        Create BootstrapToolkit initializer if it doesn't exist into
        config/initializers as bootstrap_toolkit.rb. Also BootstrapToolkit
        create next folders in your application and copy files into them:

          app/assets/stylesheets/frameworks/twitter_bootstrap
          ...

        Without any options (by default) command copy all LESS/JS/initializer
        files into your application. If BootstrapToolkit initializer was
        specified then command will copy all specified stylesheets and js. You
        can use options to set stylesheets type.
      DESC
      
      class_option :less, type: :array, desc: <<-DESC.strip_heredoc
        Type LESS files to install. Or type 'all' to install all files.
      DESC
      # class_option :scss, aliases: "-scss", desc: "Type SCSS files to install."
      # class_option :css,  aliases: "-css",  desc: "Type CSS files to install."
      # class_option :js,   aliases: "-js",   desc: "Type JS files to install."

      # def copy_initializer
      #   # TODO: copy bootstrap_toolkit.rb into config/initializers
      #   puts "TODO: copy_initializer"
      # end

      def copy_less_files
        return if options[:less].blank? || options[:less].first.blank?

        if options[:less].first == "all"
          FileUtils.cp_r source_path_for(:less), destination_path_for(:stylesheets)
        else
          # TODO: copy specified files
          # files = Dir[source_path_for(:less) + "/**/*"].map do |path|
          #   File.basename(path)
          # end
          # print_in_columns(files)
        end

        # files = files_by_type("less")

        # ["alerts", "forms.less", "test", "border-radius"].each do |file_name|
        #   if files.has_key?(File.basename(file_name, File.extname(file_name)).to_sym)
        #     FileUtils.cp(files[File.basename(file_name, File.extname(file_name)).to_sym], Rails.root.join('app/assets/'))
        #   end
        # end
      end

    private

      def destination_path_for(type)
        assets, framework = "app/assets", "frameworks/twitter_bootstrap"
        FileUtils.mkdir_p(Rails.root.join assets, type.to_s, framework).first
      end

      def source_path_for(type)
        File.expand_path("../../../../bundle/#{type}", __FILE__)
      end

      # def files_by_type(type)
      #   Dir[source_path(type)].inject({}) do |files, path|
      #     files[file_name(path, type).to_sym] = path; files
      #   end
      # end

      # def file_name(path, type)
      #   File.basename(path, ".#{type}")
      # end

    end
  end
end