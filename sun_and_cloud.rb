require "processing"
using Processing

def setup
  createCanvas(800, 600)
  background(255)
end

def draw
  background(255)

  draw_sun(200, 200)
  draw_rain(600, 400)
  draw_cloud(600, 200)
end

def draw_sun(x, y)
  # Sun
  fill(255, 204, 0)
  ellipse(x, y, 200, 200)
  
  # Rays
  stroke(255, 204, 0)
  strokeWeight(4)
  (0..360).step(30) do |angle|
    ray_x = x + cos(radians(angle)) * 150
    ray_y = y + sin(radians(angle)) * 150
    line(x, y, ray_x, ray_y)
  end

  # Eyes
  fill(0)
  ellipse(x - 50, y - 30, 20, 20)
  ellipse(x + 50, y - 30, 20, 20)
  
  # Mouth
  noFill()
  stroke(0)
  arc(x, y + 40, 100, 40, 0, PI)  
end

def draw_cloud(x, y)
  fill(200)
  noStroke()
  ellipse(x, y, 150, 100)
  ellipse(x + 50, y, 150, 100)
  ellipse(x - 50, y, 150, 100)
  ellipse(x, y - 30, 150, 100)
end

def draw_rain(x, y)
  fill(0, 0, 255)
  noStroke()
  (0..10).each do |i|
    ellipse(x + i * 20 - 100, (y + frameCount * 5) % height - 100, 5, 200)
  end
end

