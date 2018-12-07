class Application

  @@songs = [Song.new("Sorry", "Justin Bieber"),
            Song.new("Hello", "Adele")]
  #Create a new class array called @@cart to hold any items in your cart

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    @@songs.each do |song|
      resp.write "#{song.title}\n"
    end

    resp.finish
  end
end