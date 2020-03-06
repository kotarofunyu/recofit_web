## RecoFit

### Overview  
筋トレ記録アプリ  
### 使用技術  
#### 言語・フレームワーク・インフラ  
  
**インフラ**  
AWSの各種サービス  
構成は以下  
ECS + RDS + ElastiCache + ALB + Route53 + VPC  
  
**バックエンド**  
Ruby2.6.3    
Ruby on Rails 5  
  
**フロントエンド**  
JavaScript  
Vue.js
#### 開発環境  
Docker

#### コンテナ構成
1. Rails (App)
2. Nginx (Web)
3. MySQL (DB)
4. Redis (Cache Store)
5. Webpack (webpacker)  
  
ブラウザからのリクエストはRailsに搭載されているpumaだけでも捌けるが、大量アクセスや機能性を考慮し、
Nginxとpumaをsocket通信させて、Nginxがブラウザからのリクエストをpumaに投げる方式を採用。

#### その他  
**CircleCIでCI/CDパイプラインの構築**  
→GitHubにコミット&プッシュすると自動テスト&静的コード解析が走り、テストをパスするとマージされます。  
  
**GitHubでIssueとブランチを連携してプルリクベースの開発**  
→OSSや実際の開発で採用されているフローをシミュレーションしたいなと思ったので。
