require 'processing'
using Processing
draw do
  rectMode CENTER
  translate width / 2, height / 2

  # 矩形の大きさを画面幅から -10 しながら重ねて描画
  width.to_i.step(by: -10, to: 0) do |n|
    rect 0, 0, n, n
  end
end