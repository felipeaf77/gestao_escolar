class CreateCourses < ActiveRecord::Migration
  def self.up
    create_table :courses do |t|
      t.string :name
      t.text :description
      t.float :duration
      t.text :content
      t.references :instructor

      t.timestamps
    end
  end

  def self.down
    drop_table :courses
  end
end
