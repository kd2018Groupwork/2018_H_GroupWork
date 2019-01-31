#GT
User.create(
    :user_name  => 'pact',
    :email      => 'test@yahoo.co.jp',
    :password   => 'testtest',
)
#KH
User.create(
    :user_name  => 'kenko',
    :email      => 'ture@example.com',
    :password   => 'yoshida',
)
#ST
User.create(
    :user_name  => 'lastfinal',
    :email      => 'last@example.com',
    :password   => 'lastfinal',
)
#ND
User.create(
    :user_name  => 'pickle_rick',
    :email      => 'picrick@example.com',
    :password   => 'picklepower',
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
Product.create(
    :product_name   => '艦隊これくしょん',
    :genre_id   => 7
)
Product.create(
    :product_name   => '薄桜鬼',
    :genre_id   => 7
)
Product.create(
    :product_name   => '青い月の夜、もう一度彼女に恋をする',
    :genre_id   => 1
)
Product.create(
    :product_name   => '砂時計',
    :genre_id   => 2
)
Product.create(
    :product_name   => 'orange',
    :genre_id   => 2
)
Product.create(
    :product_name   => '恋は雨上がりのように',
    :genre_id   => 2
)
Product.create(
    :product_name   => '竹取物語',
    :genre_id   => 4
)
Product.create(
    :product_name   => '源氏物語',
    :genre_id   => 4
)
Product.create(
    :product_name   => '土佐日記',
    :genre_id   => 4
)
Product.create(
    :product_name   => '真田丸',
    :genre_id   => 6
)
Product.create(
    :product_name   => 'とと姉ちゃん',
    :genre_id   => 6
)
Product.create(
    :product_name   => '獣になれない私たち',
    :genre_id   => 6
)
Product.create(
    :product_name   => 'Love Letter',
    :genre_id   => 5
)
Product.create(
    :product_name   => '聲の形',
    :genre_id   => 5
)
Product.create(
    :product_name   => '少年たち',
    :genre_id   => 5
)
Product.create(
    :product_name   => 'AIR',
    :genre_id   => 7
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
    :review_flag =>  true,
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
    :review_flag =>  true,
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
    :review_flag =>  true,
)

Spot.create(
    :spot_name  =>  'ゲームサーバー名のもとになってる場所',
    :product_id  =>  '4',
    :details  =>  '市の中心部、三笠公園内にある旧帝国海軍連合艦隊の旗艦、戦艦三笠を静態保存している。艦内には、東郷平八郎の遺品や日露戦争に関する資料などの展示がある。ポーツマスの「ヴィクトリー」、ボストンの「コンスティテューション」と並ぶ世界三大記念艦の一つとされる。',
    :rate  =>  '0',
    :postcode1  =>  '',
    :postcode2  =>  '',
    :prefecture_code  =>  '14',
    :address_city  =>  '横須賀市',
    :address_street  =>  '稲岡町82-19',
    :address_building  =>  '記念艦三笠',
    :review_flag =>  true,
)    
Spot.create(
    :spot_name  =>  'ストーリーのメイン聖地',
    :product_id  =>  '5',
    :details  =>  'ゲームの中でも描かれている旧幕府軍と新選組が拠点とした旧箱舘奉行所でもある五稜郭は、ストーリーのメイン聖地といってもいいのではないだろうか？',
    :rate  =>  '0',
    :postcode1  =>  '',
    :postcode2  =>  '',
    :prefecture_code  =>  '01',
    :address_city  =>  '函館市',
    :address_street  =>  '五稜郭町',
    :address_building  =>  '五稜郭公園',
    :review_flag =>  true,
)
Spot.create(
    :spot_name  =>  '運命で繋がれたふたりがいた舞台',
    :product_id  =>  '6',
    :details  =>  '京都の嵐山が舞台の作品です。
    ひとつきに二度、満月が見られるブルームーンの８月に京都の祖母の家に帰省をした主人公。一度目の満月の夜に森散歩していると、傘で泉の水をすくう少女に出会う。そして彼女と親しくなり主人公は彼女に惹かれていくが、夜の街を歩きながら違和感を覚える。運命で繋がれた２人の運命を描く恋愛小説。',
    :rate  =>  '0',
    :postcode1  =>  '',
    :postcode2  =>  '',
    :prefecture_code  =>  '26',
    :address_city  =>  '京都市',
    :address_street  =>  '右京区',
    :address_building  =>  '嵐山',
    :review_flag =>  true,
)
Spot.create(
    :spot_name  =>  '杏と大悟がデートで訪れていたスポット',
    :product_id  =>  '7',
    :details  =>  '杏と大悟のデートスポット、八重垣神社。八重垣神社では、杏と大悟と同じように鏡の池での縁占いをすることができます。
    まず、奥の院佐久佐女の森内の鏡の池に占い用紙を浮かべます。その上に硬貨を乗せ、沈んだ時間と場所によってあなたの縁がわかるという縁占い。早く沈めば縁が早く、遅く沈むと縁が遅く、近くで沈むと身近な人、遠くで沈むと遠方の人とご縁があると伝えられています。',
    :rate  =>  '0',
    :postcode1  =>  '',
    :postcode2  =>  '',
    :prefecture_code  =>  '32',
    :address_city  =>  '松江市',
    :address_street  =>  '佐草町227',
    :address_building  =>  '八重垣神社',
    :review_flag =>  true,
)
Spot.create(
    :spot_name  =>  '1巻のカットに使われた場所',
    :product_id  =>  '8',
    :details  =>  '花時計公園とも呼ばれる場所で、1巻のカットに使われています。
    漫画のカット内では気づきにくいですが、写真のように噴水のある広場です。
    普段は静かな公園ですが、季節によってイベントが開催されます。
        
    写真左手奥の位置には、和菓子の老舗である開運堂があり、
    ロボットの作る日替わりのソフトクリームが人気です。',
    :rate  =>  '0',
    :postcode1  =>  '390',
    :postcode2  =>  '0811',
    :prefecture_code  =>  '20',
    :address_city  =>  '松本市',
    :address_street  =>  '中央2丁目1-12',
    :address_building  =>  '中央西公園',
    :review_flag =>  true,
)
Spot.create(
    :spot_name  =>  '雨宿りをしていた場所',
    :product_id  =>  '9',
    :details  =>  '原作では、この公園は「横浜市中原公園」という架空の名称が付けられていた。横浜には中原という地名はなく、川崎市中原区をもじっているようだ。
    「横浜」と「川崎（中原区）」、それぞれで生きてきた二人の中間地点として、揺れ動く気持ちを表現するために、この場所が登場したのかもしれない。',
    :rate  =>  '0',
    :postcode1  =>  '223',
    :postcode2  =>  '0061',
    :prefecture_code  =>  '14',
    :address_city  =>  '横浜市',
    :address_street  =>  '港北区日吉2丁目31番地',
    :address_building  =>  '日吉公園',
    :review_flag =>  true,
)
Spot.create(
    :spot_name  =>  'かぐや姫が育った場所',
    :product_id  =>  '10',
    :details  =>  'ここは、かぐや姫が育った場所と言われているそうです。
    公園内には、竹採塚、神来の庭、神授の竹があります。竹採塚は、誰がいつ立てたものか分かっていませんが「竹採姫」と刻まれています。',
    :rate  =>  '0',
    :postcode1  =>  '417',
    :postcode2  =>  '0847',
    :prefecture_code  =>  '22',
    :address_city  =>  '富士市',
    :address_street  =>  '比奈２０８５−４',
    :address_building  =>  '竹採公園',
    :review_flag =>  true,
)
Spot.create(
    :spot_name  =>  'なにがし寺のモデルとなったお寺',
    :product_id  =>  '11',
    :details  =>  '源氏物語には「なにがし寺」というお寺が登場します。この「なにがし寺」のモデルになったと言われているのが鞍馬寺です。光源氏が、なにがし寺で出会ったのが源氏物語のヒロインと言われる紫の君（後の紫の上・当時10歳前後）です。紫の君は初恋の相手であった藤壺にとても似ていました。彼女の面倒を見ていた祖母が亡くなってしまい、自分が面倒をみているうちに寵愛するようになりました。そして、自分好みの女性に仕立てるために引き取り育てたのでした。',
    :rate  =>  '0',
    :postcode1  =>  '601',
    :postcode2  =>  '1111',
    :prefecture_code  =>  '26',
    :address_city  =>  '京都市',
    :address_street  =>  '左京区鞍馬本町1074番地',
    :address_building  =>  '鞍馬寺',
    :review_flag =>  true,
)
Spot.create(
    :spot_name  =>  '紀貫之の土佐日記にも記述された場所',
    :product_id  =>  '12',
    :details  =>  '高瀬神社（たかせじんじゃ）は、大阪府守口市にある神社で社伝では聖武天皇の勅願により行基が高瀬里に鎮座したものとされる。行基は高瀬付近で高瀬川(淀川旧流)に架けた高瀬大橋、橋を管理する高瀬橋院を建立したとされる。また高瀬神社の宮寺として高瀬寺が建立されている。高瀬とは浅瀬の意で、紀貫之の土佐日記にもこの近辺で淀川の水位が下がり、船待ちをした旨の記述があり古代から水運で栄えた場所だった。 ',
    :rate  =>  '0',
    :postcode1  =>  '570',
    :postcode2  =>  '0062',
    :prefecture_code  =>  '27',
    :address_city  =>  '守口市',
    :address_street  =>  '馬場町１丁目１−１１',
    :address_building  =>  '高瀬神社',
    :review_flag =>  true,
)
Spot.create(
    :spot_name  =>  'オープニングで使われた場所',
    :product_id  =>  '13',
    :details  =>  '「鏡池」は、長野市にある、真田丸のオープニングで流れる池のシーンが撮影されたロケ地です。このロケ地では、ドローンを使用して撮影されました。また、「鏡池」は四季折々で異なる姿を見せ、なかでも秋の紅葉は湖水との調和した景色が目の前に広がります。',
    :rate  =>  '0',
    :postcode1  =>  '',
    :postcode2  =>  '',
    :prefecture_code  =>  '20',
    :address_city  =>  '長野市',
    :address_street  =>  '戸隠',
    :address_building  =>  '鏡池',
    :review_flag =>  true,
)
Spot.create(
    :spot_name  =>  '常子と母親の君子が二人三脚の練習をしたあの場所',
    :product_id  =>  '14',
    :details  =>  '「中田島砂丘」は、町内の運動会で1等賞の米一俵を手に入れるために、常子と母親の君子が二人三脚の練習をしたシーンを撮影したロケ地です。ロケ地の「中田島砂丘」は、日本三大砂丘の1つといわれており、運が良ければアカウミガメの産卵を見られることもあります。',
    :rate  =>  '0',
    :postcode1  =>  '',
    :postcode2  =>  '',
    :prefecture_code  =>  '22',
    :address_city  =>  '浜松市',
    :address_street  =>  '南区中田島町1313',
    :address_building  =>  '中田島砂丘',
    :review_flag =>  true,
)
Spot.create(
    :spot_name  =>  '印象深いオシャレな店',
    :product_id  =>  '15',
    :details  =>  '「けもなれ」の物語の始まりの地であり、今後も物語の中心となってくるはずであるクラフトビールバー『5tap』です。
    Googleストリートビューで見ると、ちょっとぼろっちい民家に見えますが、ドラマの撮影のためリノベーションされたようです！
    
    実際に中がバーになっているわけではないと思いますが、ドラマが好評で本当に店舗化する可能性もありますので、しっかり抑えておきたいですよね！',
    :rate  =>  '0',
    :postcode1  =>  '171',
    :postcode2  =>  '0032',
    :prefecture_code  =>  '13',
    :address_city  =>  '',
    :address_street  =>  '豊島区雑司が谷３丁目１９−３',
    :address_building  =>  '',
    :review_flag =>  true,
)
Spot.create(
    :spot_name  =>  '雪に憧れる方はぜひ！',
    :product_id  =>  '16',
    :details  =>  '中山美穂が二役をエンジ、「お元気ですか～？」のセリフが流行した、岩井俊二監督作品。小樽の風景が美しく、雪に憧れたアジアからの観光客が激増。運河沿いをゆっくり歩いてみたい。',
    :rate  =>  '0',
    :postcode1  =>  '',
    :postcode2  =>  '',
    :prefecture_code  =>  '01',
    :address_city  =>  '小樽市',
    :address_street  =>  '',
    :address_building  =>  '',
    :review_flag =>  true,
)
Spot.create(
    :spot_name  =>  '将也と硝子が初めてちゃんと言葉を交わす印象的な場所',
    :product_id  =>  '17',
    :details  =>  '四季の広場は、主人公の2人が小学生の時も高校生の時も登場し、「聲の形」という物語の昔と今をつなぐ重要な場所です。作品の中に入り込めたような気持ちを味わえると、この地を訪れたファンからの人気が高いスポット。滝のトンネルにあるベンチでほっと一息、川の流れを眺めてみるのはいかがですか？',
    :rate  =>  '0',
    :postcode1  =>  '',
    :postcode2  =>  '',
    :prefecture_code  =>  '21',
    :address_city  =>  '大垣市',
    :address_street  =>  '西外側町２丁目４６',
    :address_building  =>  '美登鯉橋',
    :review_flag =>  true,
)
Spot.create(
    :spot_name  =>  'ロケ地が刑務所！？',
    :product_id  =>  '18',
    :details  =>  '映画の舞台は2012年の少年刑務所。ということで、ロケ地に選ばれたのが旧奈良少年刑務所だが、歴史ある趣深い建物でもあるのだ。
    刑務所の建物は1908年に建てられた。重厚な赤レンガ建築が特徴で、正門や塀、所内の収容棟など多くの建物が現存。近代国家を目指して明治政府が建設した「明治の五大監獄（千葉、金沢、奈良、長崎、鹿児島）」の中で唯一当時の様相をとどめている。',
    :rate  =>  '0',
    :postcode1  =>  '630',
    :postcode2  =>  '8102',
    :prefecture_code  =>  '29',
    :address_city  =>  '奈良市',
    :address_street  =>  '般若寺町１８',
    :address_building  =>  '奈良少年刑務所',
    :review_flag =>  true,
)
Spot.create(
    :spot_name  =>  '霧島医院のモデルとなった場所',
    :product_id  =>  '19',
    :details  =>  'AIRの霧島佳乃と霧島聖が住む「霧島医院」のモデルとなっている場所。
    周辺にゲームで出てきた様々な舞台にいくことができ、ほとんどゲームでできた舞台のまんまです。',
    :rate  =>  '0',
    :postcode1  =>  '186',
    :postcode2  =>  '0002',
    :prefecture_code  =>  '13',
    :address_city  =>  '国立市',
    :address_street  =>  '東２丁目６−１',
    :address_building  =>  '糸井眼科',
    :review_flag =>  true,
)

Product.create(
    :product_name   => '徒然草',
    :genre_id   => 4
)
Spot.create(
    :spot_name  =>  '徒然草の例のお寺',
    :product_id  =>  '20',
    :details  =>  '仁和寺（にんなじ）は、京都府京都市右京区御室にある真言宗御室派総本山の仏教寺院。山号は大内山。本尊は阿弥陀如来、開基（創立者）は宇多天皇。「古都京都の文化財」として、世界遺産に登録されている。',
    :rate  =>  '0',
    :postcode1  =>  '616',
    :postcode2  =>  '8092',
    :prefecture_code  =>  '26',
    :address_city  =>  '京都市',
    :address_street  =>  '右京区御室大内33',
    :address_building  =>  '',
    :review_flag =>  true,
)
Spot.create(
    :spot_name  =>  '仁和寺のお坊さんが訪れた場所',
    :product_id  =>  '20',
    :details  =>  '石清水八幡宮（いわしみずはちまんぐう）は、京都府八幡市にある神社。旧称は「男山八幡宮」。二十二社（上七社）の1つで、伊勢神宮（三重県伊勢市）とともに二所宗廟の1つ。旧社格は官幣大社で、現在は神社本庁の別表神社。宇佐神宮（大分県宇佐市）・筥崎宮（福岡市東区）または鶴岡八幡宮（神奈川県鎌倉市）とともに日本三大八幡宮の1つ。また宮中の四方拝で遥拝される神社の1つである。本殿を含む建造物10棟が国宝に指定されている。',
    :rate  =>  '0',
    :postcode1  =>  '614',
    :postcode2  =>  '8588',
    :prefecture_code  =>  '26',
    :address_city  =>  '八幡市',
    :address_street  =>  '八幡高坊30',
    :address_building  =>  '',
    :review_flag =>  true,
)
Spot.create(
    :spot_name  =>  '競馬が行われていた場所',
    :product_id  =>  '20',
    :details  =>  '賀茂別雷神社（かもわけいかづちじんじゃ）は、京都市北区にある神社。通称は上賀茂神社（かみがもじんじゃ）。式内社（名神大社）、山城国一宮、二十二社（上七社）の一社。旧社格は官幣大社で、現在は神社本庁の別表神社。ユネスコの世界遺産に「古都京都の文化財」の1つとして登録されている。',
    :rate  =>  '0',
    :postcode1  =>  '603',
    :postcode2  =>  '8047',
    :prefecture_code  =>  '26',
    :address_city  =>  '京都市',
    :address_street  =>  '北区上賀茂本山339',
    :address_building  =>  '',
    :review_flag =>  true,
)

Product.create(
    :product_name   => 'ちびまる子ちゃん',
    :genre_id   => 7
)

#スポットにseedとして画像保存する場合
#配列にして格納しないとエラー出るよ
Spot.create(
    :spot_name  =>  'ちびまる子ちゃんランド',
    :product_id  =>  '21',
    :details  =>  '学校や公園、自宅など、ちびまる子ちゃんの舞台を
    再現したミュージアム。駄菓子屋のみつや、
    グッズショップ、砂絵の体験コーナーも併設。',
    :rate  =>  '0',
    :postcode1  =>  '424',
    :postcode2  =>  '0942',
    :prefecture_code  =>  '22',
    :address_city  =>  '静岡市',
    :address_street  =>  '清水区入船町１３−１５',
    :address_building  =>  'ちびまる子ちゃんランド',
    :review_flag =>  true,
)
Shop.create(
    :spot_id => 22,
    :postcode1 => '424',
    :postcode2 => '0942',
    :address => '〒424-0942
    静岡県静岡市清水区入船町１３−１５ エスパルス ドリーム プラザ ２Ｆ',
    :shop_name => 'マクドナルド',
    :detail => '他の店と違って小さめの店舗だけど、
        てきぱきとしてて、笑顔がとってもあたたかい‼
        他の店と違って、始まる時間が10時です‼
        まわりにファーストフードが有ります!
        席数が有り、映画の情報がテレビがあり、
        観ることが出来ます',
)
Spot.create(
    :spot_name  =>  'まる子の通う小学校',
    :product_id  =>  '21',
    :details  =>  '静岡市立清水入江小学校は、
    静岡県静岡市清水区追分二丁目にある公立小学校。',
    :rate  =>  '0',
    :postcode1  =>  '424',
    :postcode2  =>  '0841',
    :prefecture_code  =>  '22',
    :address_city  =>  '静岡市',
    :address_street  =>  '清水区追分２丁目３−１',
    :address_building  =>  '静岡市立清水入江小学校',
    :review_flag =>  true,
)
Shop.create(
    :spot_id => 22,
    :postcode1 => '424',
    :postcode2 => '0942',
    :address => '〒424-0942
     静岡県静岡市清水区清水区入船町１３−１５ エスパルス ドリーム プラザ 1F',
    :shop_name => '清水港まぐろ 魚屋のぶちゃん',
    :detail => '清水港は、冷凍マグロの水揚げ日本一
        マグロの希少部位、中とろ等が安い！？',
)
UserSpot.create(
    :user_id => 1,
    :spot_id => 1
)

UserSpot.create(
    :user_id => 1,
    :spot_id => 2
)

UserSpot.create(
    :user_id => 1,
    :spot_id => 3
)

UserSpot.create(
    :user_id => 1,
    :spot_id => 4
)

UserSpot.create(
    :user_id => 1,
    :spot_id => 5
)
UserSpot.create(
    :user_id => 1,
    :spot_id => 6
)

UserSpot.create(
    :user_id => 1,
    :spot_id => 7
)

UserSpot.create(
    :user_id => 1,
    :spot_id => 8
)

UserSpot.create(
    :user_id => 1,
    :spot_id => 9
)

UserSpot.create(
    :user_id => 1,
    :spot_id => 10
)

UserSpot.create(
    :user_id => 1,
    :spot_id => 11
)

UserSpot.create(
    :user_id => 1,
    :spot_id => 12
)

UserSpot.create(
    :user_id => 1,
    :spot_id => 13
)

UserSpot.create(
    :user_id => 1,
    :spot_id => 14
)

UserSpot.create(
    :user_id => 1,
    :spot_id => 15
)

UserSpot.create(
    :user_id => 1,
    :spot_id => 16
)

UserSpot.create(
    :user_id => 1,
    :spot_id => 17
)

UserSpot.create(
    :user_id => 1,
    :spot_id => 18
)

UserSpot.create(
    :user_id => 1,
    :spot_id => 18
)

UserSpot.create(
    :user_id => 1,
    :spot_id => 19
)

UserSpot.create(
    :user_id => 1,
    :spot_id => 20
)
UserSpot.create(
    :user_id => 1,
    :spot_id => 21
)
UserSpot.create(
    :user_id => 1,
    :spot_id => 22
)
UserSpot.create(
    :user_id => 1,
    :spot_id => 23
)
UserSpot.create(
    :user_id => 1,
    :spot_id => 24
)
Genre.create( :genre_name => '小説' )
Genre.create( :genre_name => '漫画' )
Genre.create( :genre_name => 'アニメ' )
Genre.create( :genre_name => '歴史' )
Genre.create( :genre_name => '映画' )
Genre.create( :genre_name => 'ドラマ' )
Genre.create( :genre_name => 'ゲーム' )
Genre.create( :genre_name => 'その他' )