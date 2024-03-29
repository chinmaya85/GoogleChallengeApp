class CreateOauthUsers < ActiveRecord::Migration
  def change
    create_table :oauth_users do |t|
      t.string :provider
      t.string :uid
      t.string :name
      t.string :image
      t.string :oauth_token
      t.datetime :oauth_expires_at

      t.timestamps
    end
  end
end
