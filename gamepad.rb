require 'gosu'

class GamePad < Gosu::Window
  def initialize
    super 300, 300
    self.caption = "game pad"
  end

  def update
    close if button_down?(Gosu::KbEscape)
    #puts "hello" if button_down?(Gosu::GP_UP)
    puts "#{Gosu::GP_BUTTON_0}" if button_down?(Gosu::GP_BUTTON_0)#A < 277
    puts "#{Gosu::GP_BUTTON_1}" if button_down?(Gosu::GP_BUTTON_1)#B < 278
    puts "#{Gosu::GP_BUTTON_2}" if button_down?(Gosu::GP_BUTTON_2)#X < 279
    puts "#{Gosu::GP_BUTTON_3}" if button_down?(Gosu::GP_BUTTON_3)#Y < 280
    puts "#{Gosu::GP_BUTTON_4}" if button_down?(Gosu::GP_BUTTON_4)#Shoulder Left < 281
    puts "#{Gosu::GP_BUTTON_5}" if button_down?(Gosu::GP_BUTTON_5)#Shoulder Right < 282
    puts "#{Gosu::GP_BUTTON_6}" if button_down?(Gosu::GP_BUTTON_6)#select button < 283
    puts "#{Gosu::GP_BUTTON_7}" if button_down?(Gosu::GP_BUTTON_7)#start button < 284
    puts "#{Gosu::GP_LEFT}" if button_down?(Gosu::GP_LEFT)#LEFT < 273
    puts "#{Gosu::GP_RIGHT}" if button_down?(Gosu::GP_RIGHT)#RIGHT< 274
    puts "#{Gosu::GP_UP}" if button_down?(Gosu::GP_UP)#UP < 275
    puts "#{Gosu::GP_DOWN}" if button_down?(Gosu::GP_DOWN)#Down < 276

  end

end

window = GamePad.new
window.show
