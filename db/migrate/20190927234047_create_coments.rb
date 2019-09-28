class CreateComents < ActiveRecord::Migration[6.0]
  def change
    create_table :coments do |t|
      t.references :user, null: false, foreign_key: true
      t.references :article, null: false, foreign_key: true
      t.string :content

      t.timestamps
    end
  end
end
