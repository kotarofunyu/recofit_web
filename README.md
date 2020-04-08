# フィットネス記録アプリ RecoFit

## Overview  
フィットネス記録アプリです。  
フィットネスの記録を詳細に取れることにこだわりました。  
完全独学で、手を動かしながら、開発しました。    
![スクリーンショット 2020-04-05 21 32 06](https://user-images.githubusercontent.com/58697518/78496762-98e1d680-7739-11ea-8f50-dda561cf7c29.png)  

![スクリーンショット 2020-04-05 21 37 59](https://user-images.githubusercontent.com/58697518/78498534-4b199e00-773a-11ea-90e1-63a0e914d352.png)  
## 使用技術  
### 技術のこだわりポイント  
1. インフラにAWSを使用
- 理由: インターン先の会社が使用していたが濃密に触れたことがなかったため、自分一人で一通り構築してみたかったから。
2. DevOps周りの効率化（効率化が大好き）
- 理由: 就活中にいつでも見せられるように未完成の段階でデプロイして効率の良い「開発→CI/CD」のフローを実現する必要があったから。
- CircleCIでCI/CD パイプラインの構築。
- ローカルと本番にDocker
3. 最適な設計
- インフラ
- 開発環境のコンテナ構成
- Railsのコントローラ
- テーブル設計
### 言語・フレームワーク・インフラ  
  
#### インフラ  
AWSの各種サービス  
構成は以下  
Elastic Container Service(ECS) + RDS + ElastiCache + ALB + Route53 + CloudWatch + VPC  
本番環境でもコンテナ基盤を使用

##### インフラ構成図  
  
![recofitインフラ構成図](https://user-images.githubusercontent.com/58697518/76403251-fb101b80-63c7-11ea-88ee-c3f80e581844.png)  

  
#### バックエンド  
Ruby2.6.3    
Ruby on Rails 5  
  
#### フロントエンド   
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
  
大量アクセスや機能性を考慮し、Nginxとpumaをsocket通信させて、Nginxがブラウザからのリクエストをpumaに投げる方式を採用。

### その他  
#### CircleCIでCI/CDパイプラインの構築
GitHubへのプッシュで、自動テスト&自動デプロイ
  
#### GitHubでIssueとブランチを連携してプルリクベースの開発  
OSSや実際の開発で採用されているフローをシミュレーションして開発。  
  
### URL
https://recofit.jp
