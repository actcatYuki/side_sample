class CreateHoys < ActiveRecord::Migration
  def change
    create_table :hoys do |t|
      t.string :hey
      t.string :index
      t.string :hello
      t.string :bye

      t.timestamps
    end
  end
end
