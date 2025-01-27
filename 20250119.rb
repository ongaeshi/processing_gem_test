require 'processing'
using Processing

# https://ksbmyk.github.io/sketch/20250119/
# GENUARY 2025 jan19 "Op Art."
# https://genuary.art/prompts

def setup
  createCanvas(600, 600)
  noStroke
end

def draw
  background(0)
  cols = 10
  rows = cols
  size = width / cols

  rows.times do |y|
    cols.times do |x|
      fill(255)
      offset = sin(frameCount * 0.1 + (x + y) * 0.5) * 20
      rect(x * size + offset, y * size + offset, size - 10, size - 10)
    end
  end
end
