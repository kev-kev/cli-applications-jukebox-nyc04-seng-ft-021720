# Add your code here

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  user_response = gets.strip
  if user_response.to_i > 0 && user_response.to_i < songs.length
    puts "Playing #{songs[user_response.to_i - 1]}"
  elsif songs.include?(user_response)
    puts "Playing #{user_response}"
  else
    puts "Invalid input, please try again"
  end
end

def list(songs)
  songs.each_with_index{ |song, i|
    puts "#{i + 1}. " + song
  }
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  while (user_response = gets.chomp) != 'exit'
    # if user_response == 'help'
    #   help
    # elsif user_response == 'list'
    #   list(songs)
    # elsif user_response == 'play'
    #   play(songs)
    # end
    # case user_response
    # when user_response == 'help'
    #   help
    # when user_response == 'list'
    #   list(songs)
    # when user_response == 'play'
    #   play(songs)
    # end
  end
  exit_jukebox
end
