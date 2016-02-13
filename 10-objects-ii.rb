# attr_accessor, attr_reader, attr_writer 
# private method
# module
# importing modules
# mixins 


class MusicPlayer

  attr_reader :songs, :volume 

  def initialize(songs)
    @songs = songs
  end 

  def play_current_song
  end 

  def repeat_song
  end 

  def skip_song
  end 

  def turn_down_volume
  end 


  private 

  def get_user_password
  end 

  def add_song
  end 

  def remove_song
  end 


end 