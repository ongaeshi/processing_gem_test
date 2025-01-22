require 'processing'
using Processing
draw do
  colorMode HSB, 1
  rectMode CENTER
  translate width / 2, height / 2
  width.to_i.step(by: -10, to: 0) do |n|
    fill n / width, 0.7, 1
    rect 0, 0, n, n
    
    # 回転量にマウスの X 座標を渡す
    rotate p(mouseX / width / 10)
  end
end