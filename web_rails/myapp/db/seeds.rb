
#require 'csv'
#require 'zip'

#CSVROW_PREFNAME = 6
#CSVROW_CITYNAME = 7

#savePath = "db/KEN_ALL.CSV"

#CSV.foreach(savePath, encoding: "Shift_JIS:UTF-8") do |row|
#  prefName = row[CSVROW_PREFNAME]
#  cityName = row[CSVROW_CITYNAME]
#  pref = Pref.find_or_create_by(:name => prefName)
#  City.find_or_create_by(:name => cityName, pref_id: pref.id)
#end

#File.unlink savePath

Pref.create(:name => '北海道')
City.create(:name => '札幌')
Spot.create(
    :spot_name => 'ルミナリエ',
    :product_id => 1,
    :prefs_id => 1,
    :cities_id => 1,
    :spot_address => 'xxxxxxxxxxx',
    :evalution => 1,
    :details => '綺麗な場所',
    :image_path => 'hitokage.png'
)
Producte.create(:product_name => 'ポケモン')
