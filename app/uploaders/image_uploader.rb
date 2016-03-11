# encoding: utf-8

class ImageUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  process :convert => 'png'
  process :tags => ['campuscode-socialrecipes']

  version :standard do
    eager
    process :resize_to_fill => [460, 345, :north]
  end

  version :thumbnail do
    eager
    resize_to_fit(150, 110)
  end

  def public_id
      return "campuscode-socialrecipes/#{model.name}"
    end


end
