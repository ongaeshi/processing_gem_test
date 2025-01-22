# インストールした gem を読み込む
require 'processing'
using Processing

# draw ブロックで囲むと毎秒 60回繰り返し呼ばれる
draw do
  # テキストを (10, 20) の座標に描画
  text "hello, world!", 10, 20
end