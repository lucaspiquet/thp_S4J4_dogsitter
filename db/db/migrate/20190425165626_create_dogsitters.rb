class CreateDogsitters < ActiveRecord::Migration[5.2]
  def change
    create_table :dogsitters do |t|
    t.string :first_name

    t.timestamps
    end
  end
end
