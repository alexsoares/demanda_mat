class CreateFaqs < ActiveRecord::Migration
  def self.up
    create_table :faqs do |t|
      t.references :user
      t.text :duvida

      t.timestamps
    end
  end

  def self.down
    drop_table :faqs
  end
end
