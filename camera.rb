require 'gosu'
MAP_DIMENSION = 60
class Camera < Gosu::Window
  def initialize
    super 300, 300
    self.caption = "cam"
    @map = Array.new(MAP_DIMENSION) {Array.new(MAP_DIMENSION){["x", "o"].sample}}
    @tiles = Gosu::Font.new(15)
    @player = Gosu::Font.new(15)
    @camera_x = 275
    @camera_y = 275
    @x = 275
    @y = 275
    @text = Gosu::Font.new(25)
  end

  def draw
    Gosu.translate(-@camera_x, -@camera_y) do
      MAP_DIMENSION.times do |x|
        MAP_DIMENSION.times do |y|
         tile = @map[y][x] 
         if tile == "x"
           @tiles.draw("x", x * 15, y * 15, 1, 1, 1, Gosu::Color::GRAY)
         else
           @tiles.draw(" ", x * 15, y * 15, 1)
           end
        end
      end
      @player.draw("T", @x, @y, 1)
    end
      @text.draw("X: #{@x} Y: #{@y}", 25, 25, 1, 1, 1, Gosu::Color::YELLOW)
      @text.draw("Cam X: #{@x} Cam Y: #{@y}", 25, 55, 1, 1, 1, Gosu::Color::YELLOW)
  end

  def update
   @camera_x = [[@x - 200 / 2, 0].max, 900 - 300 ].min
   @camera_y = [[@y - 200 / 2, 0].max, 900 - 300 ].min
    @x += 5 if button_down?(Gosu::KbRight)
    @x -= 5 if button_down?(Gosu::KbLeft)
    @y -= 5 if button_down?(Gosu::KbUp)
    @y += 5 if button_down?(Gosu::KbDown)
    close if button_down?(Gosu::KbEscape)
  end
end

window = Camera.new

window.show
