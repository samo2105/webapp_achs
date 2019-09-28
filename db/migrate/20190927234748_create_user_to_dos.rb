class CreateUserToDos < ActiveRecord::Migration[6.0]
  def change
    create_table :user_to_dos do |t|
      t.references :user, null: false, foreign_key: true
      t.references :tag, null: false, foreign_key: true
      t.string :name
      t.string :detail
      t.boolean :completed, default: false

      t.timestamps
    end
  end
end
