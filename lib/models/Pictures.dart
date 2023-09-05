


class Picture{
  String? imgUrl;
  String? name;
  String? price;
  String? sub1;
  String? sub2;
  String? sub3;


  

  Picture({
    this.imgUrl,
    this.name,
    this.price,
    this.sub1,
    this.sub2,
    this.sub3,
  });

static List<Picture> generatePicture(){
  return [
  Picture(
      imgUrl: "assets/images/img1.jpg",
      name: "White dress",
      price: "390 MAD",
      sub1: "aeforia@outlook.com",
      sub2: "@aeforia",
      sub3: "@aeforia", 
    ),
  Picture(
      imgUrl: "assets/images/img2.jpg",
      name: "Jump suit",
      price: "450 MAD",
      sub1: "aeforia@outlook.com",
      sub2: "@aeforia",
      sub3: "@aeforia", 
    ),
  Picture(
      imgUrl: "assets/images/img3.jpg",
      name: "T-Shirt",
      price: "220 MAD",
      sub1: "aeforia@outlook.com",
      sub2: "@aeforia",
      sub3: "@aeforia", 
    ),
  Picture(
      imgUrl: "assets/images/img4.jpg",
      name: "Alexy Prefontain",
      price: "3D artist from montreal",
      sub1: "aeforia@outlook.com",
      sub2: "@aeforia",
      sub3: "@aeforia", 
    ),

 ];
}
}