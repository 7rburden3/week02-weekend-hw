class Room

attr_reader :room_name, :songs, :guests

def initialize(room_name)
  @room_name = room_name
  @songs = []
  @guests = []
end

def number_of_guests_in_room()
  return @guests.length()
end

def can_add_guest_to_room(guest)
  @guests.push(guest)
end

def can_add_group_of_guests_to_room(guests)
  guests.each { |guest| can_add_guest_to_room(guest) }
end

def can_remove_guest_from_room(guest)
  @guests.delete(guest)
end

def can_remove_group_of_guests_from_room(guests)
  guests.each { |guest| can_remove_guest_from_room(guest) }
end

def number_of_songs_on_playlist()
  return @songs.length()
end

def can_add_songs_to_room(song)
  @songs.push(song)
end

end  #end class
