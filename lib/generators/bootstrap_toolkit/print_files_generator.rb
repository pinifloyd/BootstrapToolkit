# require "rails/generators/base"
#
# module BootstrapToolkit
#   module Generators
#     class PrintFilesGenerator < Rails::Generators::Base
#
#       desc <<-DESC.strip_heredoc
#         Print files by specified type. It will show all files as tree:
#
#           |-- twitter_bootstrap
#           |   |-- mixins
#           |   |   |-- alerts.less
#           |   |   |-- ...
#           |   |-- styles
#           |   |   |-- alerts.less
#           |   |   |-- ...
#           |   |-- mixins.less
#           |   |-- styles.less
#           |   |-- ...
#
#       DESC
#
#       class_option :type, type: :string, required: true,
#         desc: "Type one of supported types: less, scss, css, js."
#
#       FILE_TYPES  = %w(less scss css js)
#       SOURCE_PATH = %w(.. .. .. .. bundle)
#
#       def prepare_options
#         options[:type].downcase!
#       end
#
#       def print_files
#         print_recurcive(source_path) if FILE_TYPES.include?(options[:type])
#       end
#
#     private
#
#       def print_recurcive(source, depth = 0)
#         puts "|-- twitter_bootstrap" if depth == 0
#
#         source.children.each do |source|
#           depth += 1
#           print_with_devider(source, depth)
#           print_recurcive(source, depth) if source.directory?
#           depth -= 1
#         end
#       end
#
#       def print_with_devider(source, depth)
#         puts "|   " * depth + "|-- " + File.basename(source)
#       end
#
#       def source_path
#         source = File.join(SOURCE_PATH, options[:type])
#         Pathname.new File.expand_path(source, __FILE__)
#       end
#
#     end
#   end
# end