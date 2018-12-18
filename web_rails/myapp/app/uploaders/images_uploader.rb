class ImagesUploader < CarrierWave::Uploader::Base
  
  storage :file
  
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  include CarrierWave::RMagick

  process :resize_to_limit => [700, 700]
  process :convert => 'jpg'
  
  version :thumb do
    process :resize_to_limit => [100, 100]
  end
  
  def extension_white_list
    %w(jpg jpeg gif png)
  end
  
  def filename
    super.chomp(File.extname(super)) + '.jpg' if original_filename.present?
  end
  
  def filename
    time = Time.now
    name = time.strftime('%Y%m%d%H%M%S') + '.jpg'
    name.downcase
  end
  
  def default_url
    "/user_images/" + [version_name, "default_user.jpg"].compact.join('_')
 end
end
