class CreateWeixinRailsMiddlewareDiymenus < ActiveRecord::Migration
  def change
    create_table :weixin_rails_middleware_diymenus do |t|
      t.integer :public_account_id
      t.integer :parent_id
      t.string :title
      t.string :keyword
      t.boolean :is_show
      t.integer :sort
      t.string :url

      t.timestamps
    end
  end
end
