class CreateLogs < ActiveRecord::Migration
  def self.up
    create_table :logs do |t|
      t.references :user
      t.string :obs
      t.string :data
      t.references :crianca
      t.timestamps
    end
  end

  def self.down
    drop_table :logs
  end
end
