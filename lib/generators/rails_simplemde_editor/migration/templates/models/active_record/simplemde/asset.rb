class Simplemde::Asset < ApplicationRecord
  self.table_name = 'simplemde_assets'
  mount_uploader :asset, Simplemde::AssetUploader
  validates :asset, presence: true
  before_save :update_asset_attributes
  
  private
  
  def update_asset_attributes
    if asset.present? && asset_changed?
      self.file_size = asset.file.size
      self.file_type = asset.file.content_type
    end
  end
end
