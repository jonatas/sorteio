class CreateBrindes < ActiveRecord::Migration
  def self.up
    create_table :brindes do |t|
      t.string :descricao
      t.references :participante

      t.timestamps
    end
  end

  def self.down
    drop_table :brindes
  end
end
