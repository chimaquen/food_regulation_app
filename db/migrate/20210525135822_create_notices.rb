class CreateNotices < ActiveRecord::Migration[6.0]
  def change
    create_table :notices do |t|
      t.string :title
      t.string :name
      t.text :detail
      t.string :category

      t.timestamps
    end
  end
end
