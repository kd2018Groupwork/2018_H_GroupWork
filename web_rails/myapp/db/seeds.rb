
User.create(
    :user_name  => 'test',
    :email      => 'test@yahoo.co.jp',
    :password   => 'zzzzzzzz'
)

Product.create(
    :product_name   =>  '坊ちゃん',
    :genre_id   =>  1
)
Product.create(
    :product_name   =>  '涼宮ハルヒの憂鬱',
    :genre_id   =>  3
)
Product.create(
    :product_name   =>  '阪急電車',
    :genre_id   =>  1
)

Spot.create(
    :spot_name  =>  '坊ちゃんの舞台',
    :product_id  =>  '1',
    :details  =>  '夏目漱石の『坊っちゃん』 の舞台は、愛媛県松山市。ここに登場する「住田の温泉」は、道後温泉本館がモデルだ といわれている。文豪がよく利用したという宿や飲食店ではないだろうか。ここであの 名作が生まれたのかと思いを馳せることで、その作品に対する愛着や見方が変わるかも しれない。',
    :rate  =>  '0',
    :postcode1  =>  '790',
    :postcode2  =>  '842',
    :prefecture_code  =>  '38',
    :address_city  =>  '松山市',
    :address_street  =>  '道後湯之町',
    :address_building  =>  '道後温泉本館',
    #:images  =>  '["20181220041222.jpg"]'
)
Spot.create(
    :spot_name  =>  '劇場版のあの舞台！',
    :product_id  =>  '2',
    :details  =>  '劇場版「涼宮ハルヒの消失 」で病院の屋上から見える景色がきれいでその舞台で主人公とヒロインとのやりとりで 感動できる場面に使われてた。',
    :rate  =>  '0',
    :postcode1  =>  '658',
    :postcode2  =>  '0064',
    :prefecture_code  =>  '28',
    :address_city  =>  '神戸市東灘区',
    :address_street  =>  '鴨子ケ原',
    :address_building  =>  '甲南病院',
    #:images  =>  '["20181220041813.jpg"]'
)
Spot.create(
    :spot_name  =>  '時江と亜美の行きつけの店',
    :product_id  =>  '3',
    :details  =>  '本文中「逆瀬川」の章にて 登場するおばあちゃん時江と孫娘の亜美ですが、
    ふたりは、普段ここの駅で一度降りて100円ショップでおやつやオモチャを買うようです。
    
    “この界隈で一番大きな百均で”（本文抜粋）とでているからには、逆瀬川アピアしか ないでしょう。
    ここの3号館にダイソーが入ってるはずです。',
    :rate  =>  '0',
    :postcode1  =>  '665',
    :postcode2  =>  '0035',
    :prefecture_code  =>  '28',
    :address_city  =>  '宝塚市',
    :address_street  =>  '逆瀬川',
    :address_building  =>  '逆瀬川の100円ショップ',
    #:images  =>  File.open("./public/uploads/spots/20181220042151.jpg")
)

Genre.create(
    :genre_name => '歴史'
)

Genre.create(
    :genre_name => '映画'
)

Genre.create(
    :genre_name => 'ドラマ'
)

Genre.create(
    :genre_name => 'ゲーム'
)

Genre.create(
    :genre_name => 'その他'
)

Favorite.create(
    :user_id => 1,
    :spot_id => 3
)

Favorite.create(
    :user_id => 1,
    :spot_id => 1
)

Genre.create( :genre_name => '小説' )
Genre.create( :genre_name => '漫画' )
Genre.create( :genre_name => 'アニメ' )
Genre.create( :genre_name => '歴史' )
Genre.create( :genre_name => '映画' )
Genre.create( :genre_name => 'ドラマ' )
Genre.create( :genre_name => 'ゲーム' )
Genre.create( :genre_name => 'その他' )

