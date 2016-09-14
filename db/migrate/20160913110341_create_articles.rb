class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :thum
      t.string :title
      t.string :content
      t.datetime :created_at

      t.timestamps
    end
  end
end
