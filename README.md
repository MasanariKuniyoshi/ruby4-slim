# ruby4-slim

Ruby 4.0 slim 環境で動く最小構成の Docker 学習用プロジェクトです。

## 概要

- ベースイメージ: ruby:4.0-slim
- 開発用イメージ: Docker Compose
- エントリポイント: `app/main.rb`

## 初めての使い方

```bash
git clone <repository-url>
cd ruby4-slim
docker compose up --build
```

起動後、コンテナ内で Ruby を実行する例:

```bash
docker compose run --rm app ruby app/main.rb
```

または、コンテナに入って作業できます:

```bash
docker compose run --rm app bash
```

## ファイル構成

```text
.
├── Dockerfile
├── compose.yaml
├── Gemfile
├── app/
│   └── main.rb
└── README.md
```

## 変更例

`app/main.rb` を編集して、表示内容を変えたり、追加の Ruby コードを試したりできます。

```ruby
puts "Hello Ruby!"
```

## 停止

```bash
docker compose down
```
