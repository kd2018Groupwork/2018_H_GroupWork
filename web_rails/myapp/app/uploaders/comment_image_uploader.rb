class CommentImageUploader < CarrierWave::Uploader::Base
  def default_url(*args)
    "/images/" + [version_name, "noimage.png"].compact.join('_')
  end
  
  storage :file

  def store_dir
    'uploads/comment'
  end

  include CarrierWave::RMagick

  process :resize_to_limit => [400, 400]
  process :convert => 'jpg'
  
  version :thumb do
    process :resize_to_limit => [100, 100]
  end
  
  def extension_white_list
    %w(jpg jpeg gif png)
  end

  def filename
    var = "#{SecureRandom.uuid}"
    @name ||= "#{var}" + ".jpg" if original_filename.present?
  end

end