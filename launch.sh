# 本番環境のコンテナスタート時に以下を実行

# DBマイグレーション
rails db:migrate

# サーバー起動
rails server -e production
