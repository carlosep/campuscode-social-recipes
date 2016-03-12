# encoding: utf-8

class ImageUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  process convert: 'png'
  process tags: ['campuscode-socialrecipes']

  version :standard do
    eager
    resize_to_fill(460, 345)
  end

  version :thumbnail do
    eager
    resize_to_fill(150, 110)
  end

  def public_id
    "campuscode-socialrecipes/recipes/#{model.name}"
  end
end
