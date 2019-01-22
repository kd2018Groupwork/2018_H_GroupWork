class ShopImageUploader < CarrierWave::Uploader::Base
  include CarrierWave::RMagick

  storage :file

  process :resize_to_limit => [100, 100]
  process convert: 'jpg'

  # 保存するディレクトリ名
  def store_dir
    "uploads/shops"
  end

  # 許可する画像の拡張子
  def extension_white_list
    %w[jpg jpeg gif png]
  end

  # 変換したファイルのファイル名の規則
  def filename
    super.chomp(File.extname(super)) + '.jpg' if original_filename.present?
  end

  def filename
    time = Time.now
    name = time.strftime('%Y%m%d%H%M%S') + '.jpg'
    name.downcase
  end
  
end
