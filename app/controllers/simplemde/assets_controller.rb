class Simplemde::AssetsController < ApplicationController
  def create
    unless params[:file].blank?
      @asset = Simplemde::Image.new(asset: params[:file], asset_type: :image) # TODO file
      if params[:owner_id].present? && params[:owner_type].present?
        @asset.owner_id = params[:owner_id]
        @asset.owner_type = params[:owner_type]
      end
      @asset.save
      return render json: {filename: @asset.asset.url}
    end
  end
end