class CreateChampionlists < ActiveRecord::Migration[6.0]
  def change
    create_table :championlists do |t|
      t.belongs_to :user
      t.belongs_to :champion

      t.timestamps
    end
  end
end

