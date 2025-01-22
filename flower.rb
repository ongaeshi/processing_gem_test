require 'processing'
using Processing
draw do
  colorMode HSB, 1
  rectMode CENTER
  translate width / 2, height / 2
  width.to_i.step(by: -10, to: 0) do |n|
    fill n / width, 0.7, 1
    rect 0, 0, n, n
    
    # 決めた値を回転量に渡す
    rotate 0.3464390625
  end
end