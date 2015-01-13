class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :title
      t.string :content
      t.references :message, index: true

      t.timestamps null: false
    end
    add_foreign_key :messages, :messages
  end
end
