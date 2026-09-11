FROM ruby:4.0.6-slim

# ロケールの設定（UTF-8対応）
ENV LANG=C.UTF-8

# ワークディレクトリの設定
WORKDIR /app

# 必要なシステムパッケージのインストール例
RUN apt-get update -qq && apt-get install -y --no-install-recommends \
    build-essential \
    libpq-dev \
    && rm -rf /var/lib/apt/lists/*

# ソースコードやGemfileのコピーと依存関係のインストール
COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . .

CMD ["ruby", "main.rb"]
