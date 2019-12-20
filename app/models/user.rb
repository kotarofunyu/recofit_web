# UserクラスはApplicationRecordを継承する
# そのため、Userモデルは自動的にActiveRecord::Baseクラスの全ての機能を持つ
class User < ApplicationRecord
    before_save {self.email = email.downcase}
    # ユーザー名とメールアドレスにバリデーション
    validates :name, presence:true,length:{maximum: 50},uniqueness:true
    validates :email, presence:true,length:{maximum: 100},uniqueness:true
    has_secure_password
end
