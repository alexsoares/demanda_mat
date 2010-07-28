class AddUnidateToMatricula < ActiveRecord::Migration
  def self.up
    add_column :matriculas, :unidade_id, :integer
  end

  def self.down
    remove_column :matriculas, :unidade_id
  end
end
