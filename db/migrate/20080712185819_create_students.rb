class CreateStudents < ActiveRecord::Migration
  def self.up
    create_table :students do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :phone
      t.date :birth
      t.string :address
      t.string :district
      t.string :city
      t.string :state
      t.string :zip, :limit => 9
      t.text :resume
      t.text :comment

      t.timestamps
    end
  end

  def self.down
    drop_table :students
  end
end
