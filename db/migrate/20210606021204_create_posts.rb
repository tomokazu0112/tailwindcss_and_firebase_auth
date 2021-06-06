class CreatePosts < ActiveRecord::Migration[6.1]
  def up
    execute <<-SQL.squish
      CREATE TYPE post_status AS ENUM ('draft', 'published');
    SQL
    create_table :posts do |t|
      t.string :title, null: false, default: ""
      t.string :summary
      t.text :content
      t.string :slug
      t.column :status, :post_status
      t.datetime :published_at
      t.references :user, foreign_key: true

      t.timestamps
    end
  end

  def down
    drop_table :posts

    execute <<-SQL.squish
      DROP TYPE post_status;
    SQL
  end
end
