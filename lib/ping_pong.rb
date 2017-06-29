class Fixnum
  define_method(:ping_pong) do
    new_number = [] #array to store results
    (0..self).each() do |number|
      if number === 0 #Ignore 0
      new_number.push(number)
    elsif number.%(15) === 0
      new_number.push("Ping-Pong!") #return Ping-Pong!
    elsif number.%(5) === 0
        new_number.push("Pong!") #return Pong!
      elsif number.%(3) === 0
        new_number.push("Ping!") #Ping!
      else
      new_number.push(number) #default return the num itself
      end
    end
    new_number #output the results in an array
  end
end
