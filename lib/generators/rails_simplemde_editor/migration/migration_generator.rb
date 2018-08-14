module RailsSimplemdeEditor
  class MigrationGenerator < Rails::Generators::Base
    include Rails::Generators::Migration
    source_root File.expand_path('templates', __dir__)
    desc "Copy model and migration to your application."
    class_option :orm, type: :string, aliases: "-o", default: "active_record", desc: "ORM options: active_record" # TODO mongoid

    def copy_files
      orm = options[:orm].to_s
      orm = "active_record" unless %w{active_record}.include?(orm) # TODO mongoid
      %w(asset image).each do |file| # TODO file, video?, music?
        copy_model(orm, file)
      end
      if orm == "active_record"
        migration_template "migration/migration.rb", "db/migrate/create_simplemde_assets.rb"
      end
    end

    def self.next_migration_number(dirname)
      if ActiveRecord::Base.timestamped_migrations
        Time.now.utc.strftime("%Y%m%d%H%M%S")
      else
        "%.3d" % (current_migration_number(dirname) + 1)
      end
    end
      
    private

    def copy_model(orm, name)
      template "models/#{orm}/simplemde/#{name}.rb", "app/models/simplemde/#{name}.rb"
    end
  end
end
