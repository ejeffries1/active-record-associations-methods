class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    songs.count
  end

  def artist_count
    artists.count
  end

  def all_artist_names
    artists.all.map do |musician|
      musician.name
    end
  end
end
