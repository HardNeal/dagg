 require 'dat-tcp'
class Worker
  
  include DatTCP::Worker

  def work!(socket)
  	while @message = socket.gets
     # @message = socket.read
     if @message.chomp == ""
      socket.puts 'Сообщение пустое'
     else
     	puts "Client : #{@message.chomp}"
     	socket.puts "Данные принял"
	   end
	    break if @message =~ /^\s*$/ 
	    end 
     socket.write('Связь прервана!')
  ensure
    socket.close
  end
end



server = DatTCP::Server.new(Worker)
server.listen('188.120.242.28', 2000)
server.start.join
s = Worker.new
s.work!