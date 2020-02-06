user_list = [
  [ "Eddie@email.com", "score 25", "10", "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSGm-swD2CEzP0ZLreivx6ixzQrUQbR9YT9q4N1tbIjO6Im2zKG", "We only have one planet"],
  [ "MarryP@rmail.com", "score 14", "6", "https://wallpaperaccess.com/full/267434.jpg", "Everyone has a story, and they should be shared" ],
  [ "RogerW@lmail.com", "score 19", "7", "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRBb3-P-8vaqwPBRDc4AKoWHUwDQ0ytM8OLP3YRG27dXF8jNFUQ", "We can get it done if we work together"],
  [ "Dan@dmail.com", "score 18", "5.5", "https://images.unsplash.com/photo-1445855743215-296f71d4b49c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80", "We can do our part here, but we have to make comapanies do theirs too" ],
  [ "Everett.leewuollet@gmail.com", "score 20", "2.0", "https://cdn.britannica.com/17/83817-050-67C814CD/Mount-Everest.jpg","Our world is beautiful and desrves to be protected" ],
  [ "tyates@gmail.com", "43", "5.2", "https://www.billboard.com/files/styles/article_main_image/public/media/kermit-the-frog-2000s-billboard-1548.jpg",   "Its Not Easy Being Green"],
  [ "MashaIvy@gmail.com", "score 10", "4", "https://www.parakeethome.com/wp-content/uploads/2018/05/Parrot.jpg", "Animals are better then people"],
  ["lilliansFakeEmail@gmail.com","250000","5","https://i.imgur.com/0sNbpb6.jpg","I may have overthought this"]
]
user_list.each do |email, score, footprint, pic, quote|
  User.create( email: email, footprint: footprint, pic: pic, quote: quote, password: "123456" )
end

#<User id: 1, email: "evmail@website.com", created_at: "2020-02-06 16:38:35", updated_at: "2020-02-06 16:39:21", footprint: "2.0", pic: "https://images.unsplash.com/photo-1508349937151-22...", quote: nil>]
