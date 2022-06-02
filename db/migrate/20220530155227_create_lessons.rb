class CreateLessons < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.string :name
      t.timestamps
    end

    create_table :lessons do |t|
      t.date :start_date
      t.date :end_date
      t.string :title
      t.text :description
      t.integer :places
      t.references :user, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
