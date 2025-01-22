require 'processing'
using Processing
draw do
  # 色の指定モードをデフォルトの RGB から HSB に変更
  colorMode HSB, 1

  rectMode CENTER
  translate width / 2, height / 2
  width.to_i.step(by: -50, to: 0) do |n|
    # 矩形を描画するたびに色相を 0.0 から 1.0 まで変化させる
    fill n / width, 0.7, 1

    rect 0, 0, n, n
    rotate 0.1
  end
end