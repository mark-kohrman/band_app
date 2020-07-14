class AddHitSongToBands < ActiveRecord::Migration[6.0]
  def change
    add_column :bands, :hit_song, :string
  end
end
