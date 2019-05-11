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
  #this method should be the same as in jukebox.rb
puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(songs)
songs.each.with_index do |name, num|
    puts "#{num}. #{name}"
  end
end

def play(songs)
  puts "enter your number or name: "
  input = gets.chomp
  songs.each.with_index(1) do |name, num|
    if input.to_i == num
      puts "#{name}"
    elsif input == name
      puts "#{name}"
    else
      puts "Invalid input, please try again"
end
end
end

def exit_jukebox
  puts "Goodbye"
  exit
end

def run(songs)
command =""
while command
puts "Please enter a command: "
command = gets.chomp
case command
  when "exit"
    exit_jukebox
  when  "list"
    list(songs)
  when  "play"
    play(songs)
  when  "help"
    help
    break
  else help
  end
end
end
