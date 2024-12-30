class CreateCircles < ActiveRecord::Migration[8.0]
  def change
    create_table :circles do |t|
      t.string :slug
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
