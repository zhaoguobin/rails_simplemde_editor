class Simplemde::Image < Simplemde::Asset
  mount_uploader :asset, Simplemde::ImageUploader
end
