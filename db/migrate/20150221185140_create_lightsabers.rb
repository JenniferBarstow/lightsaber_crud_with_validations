class CreateLightsabers < ActiveRecord::Migration
  def change
    create_table :lightsabers do |t|
      t.string :color
      t.string :owner

      t.timestamps null: false
    end
  end
end
