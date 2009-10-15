class CreateParticipantes < ActiveRecord::Migration
  def self.up
    create_table :participantes do |t|
      t.string :nome

      t.timestamps
    end
  end

  def self.down
    drop_table :participantes
  end
end