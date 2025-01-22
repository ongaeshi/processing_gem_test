# processing gem をロードする
require 'processing'

# おまじない
using Processing

setup do
  # タイトル文字列を設定
  setTitle("Rotating Rectangle")

  # ウィンドウサイズを指定
  size(500, 400)
end

draw do
  # 毎秒60回呼ばれる
  
  # 背景色を指定
  background(100)

  # 座標をウィンドウの中心に
  translate(width / 2, height / 2)

  # 経過フレーム数に応じて回転
  rotate(frameCount / 10.0)

  # 矩形の色を指定
  fill(255, 100, 100)
  
  # 枠線の色を指定
  stroke(100, 255, 100)
  
  # 枠線の太さを指定
  strokeWeight(20)

  # 矩形は中心座標を指定して描画するモードに
  rectMode(CENTER)

  # 矩形を描画する
  rect(0, 0, 200, 100)
end
