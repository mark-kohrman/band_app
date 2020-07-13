class CreateBands < ActiveRecord::Migration[6.0]
  def change
    create_table :bands do |t|
      t.string :name
      t.string :lead_singer
      t.string :guitarist
      t.string :bassist
      t.string :drummer
      t.integer :gig_rate

      t.timestamps
    end
  end
end
