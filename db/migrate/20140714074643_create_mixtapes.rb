class CreateMixtapes < ActiveRecord::Migration
  def change
    create_table :mixtapes do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
