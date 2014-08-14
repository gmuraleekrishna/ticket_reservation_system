class CreateJourneyDetails < ActiveRecord::Migration
  def change
    create_table :journey_details do |t|
      t.string :from
      t.string :to
      t.string :date
      t.string :direction

      t.timestamps
    end
  end
end
