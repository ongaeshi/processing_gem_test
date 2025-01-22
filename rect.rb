require 'processing'
using Processing
draw do
  # 矩形の中心を指定して描画するモードに変更
  rectMode CENTER

  # 描画位置をウィンドウの中心に移動
  translate width / 2, height / 2

  # 座標 (0, 0) に大きさ 100x100 の矩形を描画
  rect 0, 0, 100, 100
end