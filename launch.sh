# 本番環境のコンテナスタート時に以下を実行

# Production環境へのDBマイグレーション
rails db:migrate RAILS_ENV=production

# Productionモードでサーバー起動
rails server -e production
