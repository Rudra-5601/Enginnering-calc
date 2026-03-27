class CreatePages < ActiveRecord::Migration[8.0]
  def change
    create_table :pages do |t|
      t.string :home
      t.string :title
      t.text :body
      t.string :comment

      t.timestamps
    end
  end
end
