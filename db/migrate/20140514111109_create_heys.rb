class CreateHeys < ActiveRecord::Migration
  def change
    create_table :heys do |t|
      t.string :hey
      t.string :index
      t.string :hello
      t.string :bye

      t.timestamps
    end
  end
end
