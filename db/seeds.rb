# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(
    [
        {name: "kotarofunyu", email: "kotarofunyu@gmail.com", password: "kotaro", picture: open("#{Rails.root}/public/images/kotaro.jpeg")},
        {name: "アーノルド", email: "test@test.com", password: "test", picture: File.open("#{Rails.root}/public/images/arnold.jpg")},
        {name: "katsunori", email: "katsu@gmail.com", password: "katsu", picture: File.open("#{Rails.root}/public/images/katsunori.jpg")},
        {name: "michel", email: "mk@gmail.com", password: "micheldayo", picture: File.open("#{Rails.root}/public/images/michel.jpg")},
        {name: "拓海", email: "takumi@gmail.com", password: "taku", picture: File.open("#{Rails.root}/public/images/takumi.jpg")},
        {name: "lisa", email: "lisa@gmail.com", password: "lisa", picture: File.open("#{Rails.root}/public/images/lisa.jpg")}
        # {id: 1, name: "kotarofunyu", email: "kotarofunyu@gmail.com", password: "kotaro", picture:File.open("../public/images/kotaro.jpeg")}
        # {id: 2, name: "アーノルド", email: "test@test.com", password: "test", picture:File.open("../public/images/arnold.jpg")},
        # {id: 3, name: "katsunori", email: "katsu@gmail.com", password: "katsu", picture:File.open("../public/images/katsunori.jpg")},
        # {id: 4, name: "michel", email: "mk@gmail.com", password: "micheldayo", picture:File.open("../public/images/michel.jpg")},
        # {id: 5, name: "拓海", email: "takumi@gmail.com", password: "taku", picture:File.open("../public/images/takumi.jpg")},
        # {id: 6, name: "lisa", email: "lisa@gmail.com", password: "lisa", picture:File.open("../public/images/lisa.jpg")}
    ]
)

TrainingRecord.create(
    [
        {
            comment: "やばい疲れたw かなり追い込めたから明日やばそう、早めに寝るわ",
            user_id: 3,
            event_attributes:
                [
                    name: "ベンチプレス",
                    set_datum_attributes: [
                        weight: 92.5,
                        rep: 10,
                        set: 5
                    ]
                ]
        },
        {
            comment: "背中のトレーニング、あんまり効いてる感じがしない。",
            user_id: 4,
            event_attributes:
                [
                    name: "懸垂(チンニング)",
                    set_datum_attributes: [
                        weight: 60,
                        rep: 8,
                        set: 3
                    ]
                ]
        },
        {
            comment: "ダンベルローイングやばすぎ！！ カイトさんの動画がかなり分かりやすいのでおすすめ",
            user_id: 5,
            event_attributes:
                [
                    name: "ワンハンド・ダンベル・ローイング",
                    set_datum_attributes: [
                        weight: 45,
                        rep: 10,
                        set: 5
                    ]
                ]
        },
        {
            comment: "ハンマーのマシンがバッチバチに入る(笑）",
            user_id: 6,
            event_attributes:
                [
                    name: "アイソラテラル・デクライン・プレス",
                    set_datum_attributes: [
                        weight: 100,
                        rep: 10,
                        set: 5
                    ]
                ]
        }
    ]
)

MenuName.create(
    [
        {name: "ベンチプレス "},
        {name: "スミスマシン・ベンチプレス"},
        {name: "インクライン・ベンチプレス"},
        {name: "ダンベル・ベンチプレス "},
        {name: "ダンベル・フライ"},
        {name: "ケーブル・クロスオーバー"},
        {name: "懸垂(チンニング)"},
        {name: "ベントオーバーロウ"},
        {name: "ケーブル・プルオーバー"},
        {name: "デッドリフト"},
        {name: "トップサイド・デッドリフト"},
        {name: "ルーマニアン・デッドリフト"},
        {name: "スモウ・デッドリフト"},
        {name: "ペック・フライ"},
        {name: "ナロー・ベンチプレス"},
        {name: "インクライン・ダンベル・ベンチプレス"},
        {name: "インクライン・ダンベルフライ"},
        {name: "アイソラテラル・デクライン・プレス"},
        {name: "アイソラテラル・インクライン・プレス"},
        {name: "ワンハンド・ダンベル・ローイング"},
        {name: "ロー・プーリー・ロウ"},
        {name: "ラット・プルダウン"},
        {name: "アイソラテラル・ロウ"},
        {name: "アイソラテラル・プルダウン"},
        {name: "レッグ・エクステンション"},
        {name: "レッグ・カール"},
        {name: "レッグ・プレス"},
        {name: "バーベル・カール"},
        {name: "ダンベル・カール"},
        {name: "オルタネイト・ダンベル・カール"},
        {name: "インクライン・ダンベル・カール"},
        {name: "プリーチャー・カール"},
        {name: "スパイダー・カール"},
        {name: "ケーブル・カール"},
        {name: "トライセプス・プレスダウン"},
        {name: "トライセプス・プッシュダウン"},
        {name: "トライセプス・エクステンション"},
        {name: "ケーブル・オーバーヘッドエクステンション"},
        {name: "サイドレイズ"},
        {name: "ワンハンド・サイドレイズ"},
        {name: "インクライン・サイドレイズ"},
        {name: "ケーブル・サイドレイズ"},
        {name: "ダンベル・ショルダープレス"},
        {name: "バーベル・ショルダープレス"},
        {name: "スミスマシン・ショルダープレス"},
        {name: "バーベル・バックプレス"},
        {name: "フロントレイズ"},
        {name: "インクライン・フロントレイズ"},
        {name: "リアレイズ"},
        {name: "インクライン・リアレイズ"},
        {name: "リアデルトフライ"},
        {name: "クランチ"},
        {name: "シットアップ"},
        {name: "レッグレイズ"},
        {name: "アブローラー（腹筋ローラー）"},
        {name: "ハンギング・レッグレイズ"},
        {name: "スクワット"},
        {name: "ハックスクワット"},
        {name: "レッグ・プレス"},
        {name: "レッグ・エクステンション"},
        {name: "レッグ・カール"},
        {name: "カーフ・レイズ"}
    ]
)

