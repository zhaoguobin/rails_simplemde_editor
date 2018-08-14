class CreateSimplemdeAssets < ActiveRecord::Migration[5.0]
  def change
    create_table :simplemde_assets do |t|
      t.string :asset
      t.integer :file_size
      t.string :file_type
      t.integer :owner_id
      t.string :owner_type
      t.string :asset_type
      
      t.timestamps
    end
  end
end
  
  