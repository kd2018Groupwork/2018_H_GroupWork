=begin
require 'csv'
require 'zip'
CSVROW_PREFNAME = 6
CSVROW_CITYNAME = 7
savePath = "db/KEN_ALL.CSV"
CSV.foreach(savePath, encoding: "Shift_JIS:UTF-8") do |row|
    prefName = row[CSVROW_PREFNAME]
    cityName = row[CSVROW_CITYNAME]
    pref = Pref.find_or_create_by(:name => prefName)
    City.find_or_create_by(:name => cityName, pref_id: pref.id)
end
=end

Spot.create(
    :spot_name => 'ルミナリエ',
    :product_id => 1,
    :evalution => 1,
    :user_id => 1,
    :details => '凄いな場所',
    :image_path => 'hitokage.png',
    :postcode => 1,
    :prefecture_code => 1,
    :address_city => '姫路市',
    :address_street => 1,
    :address_building => 'い'
)
Spot.create(
    :spot_name => '姫路城',
    :product_id => 2,
    :evalution => 1,
    :user_id => 1,
    :details => '綺麗な場所',
    :image_path => 'hitokage.png',
    :postcode => 1,
    :prefecture_code => 1,
    :address_city => '神戸市',
    :address_street => 2,
    :address_building => 'あ'
)
Producte.create(:product_name => 'ポケモン')
Producte.create(:product_name => 'デジモン')
