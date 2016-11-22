# In this exercise, you will be creating two classes AND the driver code to test them.
# You will create a Tv class and a Remote class. 

# The Tv class will have the attributes: power, volume, and channel. 

# The Remote class will have just one attribute: tv. This will represent which tv it
# actually controls.
# The Remote will have the following instance methods: 
# toggle_power (this will turn off the tv if it's on, or turn it on if it's off)
# increment_volume (this will increase the tv's volume by 1)
# decrement_volume (this will decrease the tv's volume by 1)
# set_channel (this will change the tv's channel to whatever integer is passed to this method)
class TV 
  attr_accessor :channel, :volume, :which_tv
  def initialize(tv_info)
    @power = tv_info[:power]
    @volume = tv_info[:volume]
    @channel = tv_info[:channel]
  end
end
class Remote < TV
   
  def initalize(input)
    super
    @which_tv = input[:which_tv]
  end
  def toggle_power
    if @power == "off"
      @power = "on"
    else
      @power = "off"
    end
  end
  def increment_volume
    return volume += 1
  end
  def decrement_volume
    @volume += 0
  end
  def set_channel(new_channel)
    @set_channel = new_channel
  end
end


flat_screen = Remote.new(power:["off"], volume:[1], channel:["1"], which_tv:["Flat Screen"])
flat_screen.increment_volume

p flat_screen







