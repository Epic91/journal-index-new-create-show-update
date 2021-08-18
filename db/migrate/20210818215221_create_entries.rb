class CreateEntries < ActiveRecord::Migration[6.1]
  def change
    create_table :entries do |t|
      t.string :name
      t.string :subject
      t.text :body

      t.timestamps
    end
  end
end
