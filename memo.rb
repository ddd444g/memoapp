require "csv" # CSVファイルを扱うためのライブラリを読み込んでいます

puts "1 → 新規でメモを作成する / 2 → 既存のメモを編集する"

memo_type = gets.to_i # ユーザーの入力値を取得し、数字へ変換しています

# if文を使用して続きを作成していきましょう。
# 「memo_type」の値（1 or 2）によって処理を分岐させていきましょう。


# 1を選んだ場合
if memo_type == 1
  
  
  # まずファイルをつくってもらう
  p "拡張子を除いたファイルを入力してください"
  name = gets.chomp
  
  
  p "#{name}.csvを作成します"
  
  
  # ファイルに書き込み
  p "メモしたい内容を入力してください"
  
  # ここを修正しました
  # メモアプリなので、
  # 配列ではなく文字列で入力するためにreadを使いました。
  p "ctrl + d で保存します。"
  input = $stdin.read
  # 下のelsif文の中にも修正箇所あります。
  
  
  # 新規ファイルを作成して書き込む処理
  file = File.open("#{name}.csv","w")
  
  file.write("#{input}")
  
  file.close
  

  
#2を選んだ場合 
elsif memo_type == 2
  
  
  # どのファイルを編集するか
  p "拡張子を除いた既存のファイルを入力してください"
  edit_name = gets.chomp
  
  
  p "#{edit_name}.csvを編集します"
  
  
  # 追加の内容を受け付ける
  p "メモしたい内容を入力してください"
  
  
  # ここを修正しました
  # メモアプリなので、
  # 配列ではなく文字列で入力するためにreadを使いました。
  p "ctrl + d で保存します。"
  edit_input = $stdin.read
  # ここまで
  
  # 追加の内容を書き込む処理
  edit_file = File.open("#{edit_name}.csv", "a")
 
  edit_file.write("#{edit_input}")
  
  edit_file.close
  
  
  
# 1か2以外を押された時
else
  p "エラーです。半角で1か2を入力してください"
end  
  