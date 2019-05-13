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
  help = <<-HELP
I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program
HELP

  puts help
end

def list(songs)
  #hint from instructions: use .each_with_index - https://apidock.com/ruby/Enumerator/each_with_index |value, index|
  #hint from instructions: arrays are indexed starting at 0 so adding 1 to the index number is needed
  
  songs.each_with_index do |song, i|
    puts "#{i+1}. #{song}"
  end
end 


def play(songs)
  
  puts "Please enter a song name or number:"
  song = gets.chomp
  
  puts "Playing <song name>"
  puts "Invalid input, please try again"
  
end



def exit_jukebox()
end


