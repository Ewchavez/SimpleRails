class CreateProyectos < ActiveRecord::Migration[5.1]
  def change
    create_table :proyectos do |t|
      t.string :nombre
      t.integer :rating
      t.string :desc
      t.integer :sigo
      t.references :user, foreign_key: true
      t.references :curso, foreign_key: true

      t.timestamps
    end
  end
end
