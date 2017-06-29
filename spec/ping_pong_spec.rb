require('rspec')
  require('ping_pong')

  describe('Fixnum#ping_pong?') do
     it("change number divisible by 3 to ping!") do
     expect((3).ping_pong).to eq([0, 1, 2, "Ping!"])
    end

    it("change number divisible by 5 to pong!") do
    expect((5).ping_pong).to eq([0, 1, 2, "Ping!", 4, "Pong!"])
   end

   it("change number divided by both 3 and 5 to ping_pong") do
   expect((15).ping_pong).to eq([0, 1, 2, "Ping!",  4, "Pong!", "Ping!", 7, 8, "Ping!", "Pong!", 11, "Ping!", 13, 14, "Ping-Pong!"])
  end

  end
