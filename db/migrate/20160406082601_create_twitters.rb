class CreateTwitters < ActiveRecord::Migration
  def change
    create_table :twitters do |t|
      t.string :author
      t.string :password
      t.string :content

      t.timestamps null: false
    end
  end
end
