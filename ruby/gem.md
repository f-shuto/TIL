# 試したい

- 図表描画が簡単にできるらしい
  https://github.com/ankane/chartkick

# 開発

## [activerecord-import](https://github.com/zdennis/activerecord-import)

ActiveRecord で Bulk insert するための gem。
大量のレコードを一括 insert する場合に使用するとよい。
topsic ではイベント登録画面での受験者追加やテスト画面での問題追加に使用。
**Apartment を使用している場合「reset_sequence_name」でシーケンスをリセットしてから使用する。これをしないと他スキーマのシーケンスを見に行ってしまうことがある**

```
# キャッシュされた他スキーマのシーケンスを使用しないように、import前にリセットする
HogeModel.reset_sequence_name
HogeModel.import hoge_datas
```

## [acts_as_list](https://github.com/swanandp/acts_as_list)

リスト形式のオブジェクトの並び替えに便利。
対象のモデル（テーブル）には並び順を表すカラム（デフォルトは position）が必要。

## [amoeba](https://github.com/amoeba-rb/amoeba)

モデルの複製時に関連モデルも含めて複製してくれる。
amoeba は「アメーバ」。その増殖性から gem の名前の由来となっている。

### 使い方例

```
class Post < ActiveRecord::Base
  has_many :comments
  has_many :tags
  has_many :authors

  # 複製する・しない関連モデルをしているする場合は、
  # include_associationまたはexclude_associationを指定する。
  # パターン１：Inclusive Style
  amoeba do
    enable
    # この場合tagsのみ複製する。その他の関連モデルは複製しない。
　  include_association :tags
　　include_association :comments, if: :popular?  # 条件指定もできる。

    # 属性ごとにどう複製するかもある程度指定できる。
　　set state_tracker: "open_for_editing" # コピーせず値を指定したい場合
　　prepend title: "Copy of " # 接頭語を付けたい場合
　　append　name: "Copy of " # 接尾語を付けたい場合
　　nullify :date_published # nullにしたい場合
　　regex :contents => {:replace => /dog/, :with => 'cat'} # 正規表現で置換して複製
  end
  # パターン２：Exclusive Style
  amoeba do
    enable
    # この場合authorsは複製しない。その他の関連モデルは複製する。
    exclude_association :authors
  end
end

def popular?
  likes > 15
end

```

## [apartment](https://github.com/influitive/apartment)

マルチテナント化を簡単に実現するための gem。サブドメインによって DB のスキーマを切り替える。

## [axlsx](https://github.com/randym/axlsx)、[axlsx_rails](https://github.com/straydogstudio/axlsx_rails)

Excel 出力を簡単に実装できる。

## [draper](https://github.com/drapergem/draper)

> Draper は Rails のプレゼンテーション層の役割を担う gem です。
> http://ruby-rails.hatenadiary.com/entry/20150415/1429031791

使うと View がスッキリ書ける。

## [gretel](https://github.com/lassebunk/gretel)

パンくずリストの gem。
パンくずリストの実装が各所に散らばることなく config/breadcrumbs.rb に集約できるのが良い。

## [kaminari](https://github.com/kaminari/kaminari)

ページネーションの gem。
便利だが変わったことをしようとすると結構はまる。

## [pundit](https://github.com/varvet/pundit)

権限管理の gem。

- Controller に対応する Policy ファイルを作成し、その中にアクション（Public メソッド）ごとの権限設定を記述する。(「app/policies」配下などに格納）。
  例）UsersController であれば UserPolicy。
- Policy クラスの中ではクラスレベルでの権限設定はもちろんレコードレベルでの権限設定（自分のレコードのみ更新できるなど）もできる。権限設定を Policy にまとめることでコードがスッキリする。
- アクションに対する権限設定のメソッド名は、「Controller のアクション名　+　?　」。
  例）new アクションであれば、「new?」。
- viewで権限に応じてボタンの表示制御をしたい場合など
```
- if policy(@curent_user).export_csv?
  = hoge_button(:hoge)
```

## [ransack](https://github.com/activerecord-hackery/ransack)

検索を簡単に実装できる gem。
「属性名 + [matcher](https://github.com/activerecord-hackery/ransack#search-matchers)」の形の検索であれば、ほぼ view のみで検索が実装できる。
matcher で対応できない検索でも、 [Ransackers](https://github.com/activerecord-hackery/ransack/wiki/Using-Ransackers) メソッドを使えば、Arel を用いたある程度複雑な検索も実装する事ができる。
が、本当に複雑な検索の場合、潔く ransack を使わない実装を考えたほうが早い場合も多い（個人的には複雑になりそうだったらすぐ生 SQL にしている）。

## [devise](https://github.com/plataformatec/devise)

ログイン認証に関する様々な機能をサポートする。

## [i18n-js](https://github.com/fnando/i18n-js)

Rails の i18n を javascript で利用可能にする。
翻訳が rails と js で共通化できてよい。

## [country_select](https://github.com/stefanpenner/country_select)

国選択プルダウン

## [paperclip](https://github.com/thoughtbot/paperclip)

画像アップロード。\
同様の機能を持った gem としては carrierwave が有名。\
paperclip は carrierwave に比べるとできることは少ないが実装が簡単らしい。\

## [bullet](https://github.com/flyerhzm/bullet)

SQL の過剰な発行(n + 1 問題)を警告してくれる。

## [pry-byebug](https://github.com/deivid-rodriguez/pry-byebug)

ソースコードのステップ実行

## [config](https://github.com/railsconfig/config)

設定ファイルのサポート

## [meta_request](https://github.com/dejan/rails_panel/tree/master/meta_request)

Chrome 拡張 (Rails Panel)と組み合わせて使用することで、各種デバッグ情報が参照できる。

## [slim](https://github.com/slim-template/slim)

view のテンプレートを erb から slim に変更しています。

# ソースコードの静的チェック

## [rubocop](https://github.com/bbatsov/rubocop)

コーディング規約の代替として利用できる。

## [rails_best_practices](https://github.com/flyerhzm/rails_best_practices)

ベストプラクティスにそっているかチェックする。rubocop と一部被るところもある。

## [brakeman](https://github.com/presidentbeef/brakeman)

XSS や SQL インジェクション等のセキュリティ脆弱性を警告してくれる。

# 環境

## [ridgepole](https://github.com/winebarrel/ridgepole)

複数 DB の定義を同期する。
