class CreateTaggings < ActiveRecord::Migration[5.1]
  def change
    create_table :taggings do |t|
      t.references :articles, foreign_key: true
      t.references :tags, foreign_key: true
    end
  end
end
