require 'processing'
using Processing
draw do
  rectMode CENTER
  translate width / 2, height / 2
  width.to_i.step(by: -50, to: 0) do |n|
    rect 0, 0, n, n
  
    # 矩形を描画するたびに 0.1 ラジアン回転
    rotate 0.1
  end
end