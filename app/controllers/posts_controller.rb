class PostsController < ApplicationController

  # 投稿を全て取得してviewで使えるように定義する && 日時の降順にソート
  def index
    @posts = Post.all.order(updated_at: "DESC")
  end

  # 新規作成
  def new
    @post = Post.new
  end

  # 入力エリアからのデータを受け取る

  #データを保存する
end
