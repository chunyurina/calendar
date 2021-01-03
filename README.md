# カレンダー
![トップページ](https://i.gyazo.com/847b6f8ca6a3d601a5397f1010ed4568.png)
![トップページ](https://i.gyazo.com/96c7bebb14d0b3a3164740e026f606ec.png)
![new画面](https://i.gyazo.com/34690fee0c2827cc0cbf81a56b4c9480.png)
![show画面](https://i.gyazo.com/a6b91d05841be27b447ec74fab886e4a.png
)

## アプリの概要
- 使用言語：Ruby on rails
- 開発期間：5日間
- 使い方（予定を入れる）：
1. 新規登録を行う。
2. トップページ上部の「＋」ボタンをクリック。
3. 「タイトル」（必須）、「開始時刻」、「内容」を入力して保存ボタンをクリック
4. 「開始時刻」で入力した日程に「タイトル」が表示されている
- 使い方（編集する）：
1. 当該「タイトル」をクリック
2. 「編集する」をクリック
3. 以下上に同じ
- 使い方（削除する）：
1. 当該「タイトル」をクリック
2. 「削除する」をクリック

## データベース設計

### eventsテーブル
|Column|Type|Options|
|------|----|-------|
|title|string|null: false|
|content|text|null: false|
|start_time|datetime|null: false|
|user_id|integer|null: false, foreign_key: true|
#### Association
belongs_to: user


### usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false, unique: true|
|encrypted_password|string|null: false|
#### Association
has_many: events


## 工夫した点
- 個人的に慣れている日曜日始まりにしたこと
- 必要最低限のデザインにすることでユーザーに余計な情報を与えず使いやすいようにしたこと
- 前の月、次の月、本日、土曜日、日曜日の色を使い分け、パッとみただけで曜日を把握しやすくしたこと
- フォントを統一し視覚的に違和感の無いようにしたこと
- 複数のユーザーが個々に利用できるように制約をかけたこと
- 言語の日本語化や、タイムゾーンを日本にしたこと
- gem(simple_calendar)を導入することでコーディングの効率化を図ったこと

## 今後の改善案
- ログインと新規登録画面のデザインすること
- 祝日が表示されるようにすること
- groupテーブルを追加し、家族でスケジュールを共有できるようにすること
- 「Previous」「Next」を「<<」「>>」のようなアイコンにすること
- コードのリファクタリングを行うこと