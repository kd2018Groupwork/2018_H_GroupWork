Producte.create(
    :product_name => 'ポケモン'
)

Producte.create(
    :product_name => 'デジモン'
)

Producte.create(
    :product_name => 'テスト',
    :genre_id     => 1
)

Spot.create(
    :spot_name        => 'エリナミル',
    :product_id       => 1,
    :rate             => 1,
    :details          => '場所凄いな',
    :postcode1        => 1,
    :postcode2        => 1,
    :prefecture_code  => 1,
    :address_city     => 'しじめひ',
    :address_street   => 1,
    :address_building => 'e'
)

Spot.create(
    :spot_name => 'ルミナリエ',
    :product_id => 1,
    :details => '凄いな場所',
    :postcode1 => 1,
    :postcode2 => 1,
    :prefecture_code => 1,
    :address_city => '姫路市',
    :address_street => 1,
    :address_building => 'い'
)
Spot.create(
    :spot_name => '姫路城',
    :product_id => 2,
    :details => '綺麗な場所',
    :postcode1 => 1,
    :postcode2 => 1,
    :prefecture_code => 1,
    :address_city => '神戸市',
    :address_street => 2,
    :address_building => 'あ'
)

Genre.create(
    :genre_name => '小説'
)

Genre.create(
    :genre_name => '漫画'
)

Genre.create(
    :genre_name => 'アニメ'
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