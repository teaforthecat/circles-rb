class CreateJoinTableCirclesPeople < ActiveRecord::Migration[8.0]
  def change
    create_join_table :circles, :people do |t|
      t.index [ :circle_id, :person_id ]
      t.index [ :person_id, :circle_id ]
    end
  end
end
