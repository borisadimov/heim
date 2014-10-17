class CreateTeammates < ActiveRecord::Migration
  def change
    create_table :teammates do |t|
      t.string :name
      t.string :position

      t.timestamps
    end
  end
end
