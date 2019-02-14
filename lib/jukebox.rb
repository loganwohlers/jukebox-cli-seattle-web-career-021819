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
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(arr)
  arr.each_with_index do |val,index|
    puts "#{index+1}. #{val}"
  end
end

def play (arr)
  puts "Please enter a song name or number:"
  response=gets.chomp
  if (response.length==1)
    response=response.to_i
    if(response<=arr.length)
      puts arr[response-1]
    else
      puts "Invalid input, please try again"
    end
  elsif(arr.include?(response))
    puts "Playing #{response}"
  else
     puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run (arr)
  help
  puts "Please enter a command:"
  answer=gets.chomp
  while(answer!="exit")
    if(answer=="help")
      help
      puts "Please enter a command:"
      answer=gets.chomp
    elsif(answer=="list")
      list(arr)
      puts "Please enter a command:"
      answer=gets.chomp
    elsif(answer=="play")
      play(arr)
      puts "Please enter a command:"
      answer=gets.chomp
    else
      puts "Invalid input please try again:"
      answer=gets.chomp
    end
  end
  exit
end
  
#run(songs)