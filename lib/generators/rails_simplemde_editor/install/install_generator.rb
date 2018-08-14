module RailsSimplemdeEditor
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path('templates', __dir__)
    desc "Install simplemde editor for your application."

    def insert_or_copy_js_files
      if File.exist?('app/assets/javascripts/application.js')
        insert_into_file "app/assets/javascripts/application.js", "//= require jquery\n//= require rails_simplemde\n", before: "//= require_tree ."
      else
        copy_file "application.js", "app/assets/javascripts/application.js"
      end
    end

    def insert_or_copy_css_files
      if File.exist?('app/assets/stylesheets/application.css')
        insert_into_file "app/assets/stylesheets/application.css", " *= require rails_simplemde\n", before: " *= require_tree ."
      else
        copy_file "application.css", "app/assets/stylesheets/application.css"
      end
    end

    def copy_load_simplemde_coffeescript
      template "load_simplemde.coffee", "app/assets/javascripts/load_simplemde.coffee"
    end
  end
end
