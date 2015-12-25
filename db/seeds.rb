# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# いったんきれいにお掃除する
Store.delete_all
# 新しくStoreデータを作成する
s_ary=[]
 10.times do |no|
   y = ["福岡","北九州","筑豊","筑後","糸島"].sample
   z = ["デザイン","プログラム","マーケティング","素材","写真"].sample
   name = Faker::Japanese::Name.name
  s_hash={id: 1+no,
    store_name: "#{name} No.#{1+no}",
    stor_catch: "キャッチコピー#{1+no}",
    store_genre: z,
    store_area: y,
    store_description:'説明文の文章を長めに入れる',
    store_address:"#{y}市丸々町",
    store_access:'交通手段',
    store_tel:'090-0000-0000',
    store_email:'aaa@bbb',
    storeurl:'http://www.google.co.jp',
    store_movie:'youtube!'
    }
 s_ary<<s_hash
end
# puts s_ary

Store.create(s_ary)

=begin
Store.create([
  {
    id: 1,
     store_name:'店名',
     stor_catch:'キャッチコピー',
     store_genre:'ジャンル',
     store_area:'エリア',
     store_description:'説明文の文章を長めに入れる',
     store_address:'所在地県所在地市所在地町',
     store_access:'交通手段',
     store_tel:'090-0000-0000',
     store_email:'aaa@bbb',
     storeurl:'http://www.google.co.jp',
     store_movie:'youtube!'
  },
  {
    id: 2,
     store_name:'店名2',
     stor_catch:'キャッチコピー2',
     store_genre:'ジャンル2',
     store_area:'エリア2',
     store_description:'説明文の文章を長めに入れる2',
     store_address:'所在地県所在地市所在地町2',
     store_access:'交通手段2',
     store_tel:'090-0000-0000',
     store_email:'aaa@bbb',
     storeurl:'http://www.google.co.jp',
     store_movie:'youtube!'  },
  {
    id: 3,
     store_name:'店名3',
     stor_catch:'キャッチコピー3',
     store_genre:'ジャンル3',
     store_area:'エリア3',
     store_description:'説明文の文章を長めに入れる3',
     store_address:'所在地県所在地市所在地町3',
     store_access:'交通手段3',
     store_tel:'090-0000-0000',
     store_email:'aaa@bbb',
     storeurl:'http://www.google.co.jp',
     store_movie:'youtube!'  },
  {
    id: 4,
     store_name:'店名4',
     stor_catch:'キャッチコピー4',
     store_genre:'ジャンル4',
     store_area:'エリア4',
     store_description:'説明文の文章を長めに入れる4',
     store_address:'所在地県所在地市所在地町4',
     store_access:'交通手段4',
     store_tel:'090-0000-0000',
     store_email:'aaa@bbb',
     storeurl:'http://www.google.co.jp',
     store_movie:'youtube!'  }
  ])
=end

Blog.delete_all


ary=[]

10.times do |no|
  x = [1,2,3,4,5,6,7,8,9,10].sample
  hash={id: 1+no, blog_date: ("09/11/2015 20:00:00"), blog_title: "title#{1+no}",blog_main: "本文#{1+no}",blog_img:"#{1+no}.jpg",
 store_id:x }
 ary<<hash
end
Blog.create(ary)

=begin
3.times do |no|
    Blog.create(id: no, blog_date: ("09/11/2015 20:00:00"), blog_title: "title#{no}",blog_main: "本文#{no}",blog_img:'ブログの写真です.jpg',
 store_id:1 )
end
=end

    # {
#  id:1,
#  blog_date: ("09/11/2015 20:00:00"),
#  blog_title:'ブログを始めました',
#  blog_main:'ブログの本文です',
#  blog_img:'ブログの写真です.jpg',
#  store_id:1
# },
#   {
#  id:2,
#  blog_date: ("09/12/2015 20:00:00"),
#  blog_title:'ブログ２回目',
#  blog_main:'ブログの本文です',
#  blog_img:'ブログの写真です.jpg',
#  store_id:1
# },
#   {
#  id:3,
#  blog_date: ("09/11/2015 21:00:00"),
#  blog_title:'うちもブログを始めました',
#  blog_main:'ブログの本文だよ',
#  blog_img:'ブログの写真です.jpg',
#  store_id:2
# },