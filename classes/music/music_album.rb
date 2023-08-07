require '../item'

class MusicAlbum < Item
  attr_reader :on_spotify, :publish_date

  def initialize(on_spotify:, publish_date:)
    super(publish_date)
    @on_spotify = on_spotify
  end

  def can_be_archived?
    super() && @on_spotify
  end

  def to_hash
    {
      'id' => @id,
      'publish_date' => @publish_date,
      'on_spotify' => @on_spotify,
      'genre' => @genre || ''
    }
  end
end
