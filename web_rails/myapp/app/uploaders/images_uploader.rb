class ImagesUploader < CarrierWave::Uploader::Base
  #require 'digest/md5'
  
  def default_url(*args)
    "/images/" + [version_name, "default.png"].compact.join('_')
  end
  
  storage :file

  def store_dir
    'uploads/users'
  end

  include CarrierWave::RMagick

  #process :resize_to_limit => [700, 700]
  process :resize_to_limit => [100, 100]
  process :convert => 'jpg'
  
  #version :thumb do
  #  process :resize_to_limit => [100, 100]
  #end
  
  def extension_white_list
    %w(jpg jpeg gif png)
  end
  
  def filename
    super.chomp(File.extname(super)) + '.jpg' if original_filename.present?
    time = Time.now
    name = time.strftime('%Y%m%d%H%M%S') + '.jpg'
    name.downcase
    #var = Digest::MD5.new.update().to_s
    var = "#{SecureRandom.hex(10)}"
    @name ||= "#{var}-" + "#{name}" if original_filename.present?
  end
  
end
