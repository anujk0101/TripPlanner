class AllData
{
  String? userID;
  String? password;
  AllData({this.userID, this.password})
  {
    if(this.userID !=null && this.password !=null) {
      dataLoginDetails.add({'userID': this.userID, 'password': this.password});
    }
  }
  List<Map<String, dynamic>> dataLoginDetails=[
    {
      'userId' : 'anujkeshri10@gmail.com',
      'password' : 'flutter'
    },
  ];

}

class StateName
{
  List<Map<String, dynamic>> stateDetails=[
    {
  'sName' : 'Adhra Pradesh',
  'img' : 'https://assets-news.housing.com/news/wp-content/uploads/2022/08/18071328/Andhra-Pradesh-3.png',
    /*'p1' : 'Araku Valley',
      'p2' :'Visakhapatnam',
      'p3' : 'Amaravati'*/
    },
    {
    'sName' : 'Arunachal Pradesh',
    'img' : 'https://static.toiimg.com/photo/91692789.cms'
    },
    {
    'sName' : 'Assam',
    'img' : 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcLwiby393_iQ6GzAdvBgPmoJBjSRe349ypw&s'
    },
    {
    'sName' : 'Bihar',
    'img' : 'https://static.langimg.com/thumb/85174721/navbharat-times-85174721.jpg?imgsize=181278&width=540&resizemode=3'
    },
    {
    'sName' : 'Chhattisgarh',
    'img' : 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/11/30/d8/fa/bijapur.jpg?w=300&h=300&s=1'
    },
    {
    'sName' : 'Goa',
    'img' : 'https://assets-news.housing.com/news/wp-content/uploads/2022/06/22073109/Best-tourist-places-to-visit-in-Goa-and-things-to-do-03.jpg'
    },
    {
    'sName' : 'Gujarat',
    'img' : 'https://www.holidify.com/images/bgImages/GANDHINAGAR.jpg'
    },
    {
    'sName' : 'Haryana',
    'img' : 'https://www.akshartours.com/wp-content/uploads/2020/08/Things-to-Do-in-Haryana.jpg'
    },
    {
    'sName' : 'Himachal Pradesh',
    'img' : 'https://blog.thomascook.in/wp-content/uploads/2020/10/01-manali.jpg'
    },
    {
    'sName' : 'Jharkhand',
    'img' : 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0e/5e/c0/46/drone-shot-of-the-valley.jpg?w=500&h=400&s=1'
    },
    {
    'sName' : 'Karnataka',
    'img' : 'https://blogs.revv.co.in/blogs/wp-content/uploads/2020/11/Murudeshwar.jpg'
    },
    {
    'sName' : 'Kerala',
    'img' : 'https://nivaanholidays.com/wp-content/uploads/2023/06/ii0ows5abco.jpg.webp'
    },
    /*{
    'sName' : 'Madhya Pradesh',
    'img' : 'https://assets-news.housing.com/news/wp-content/uploads/2022/08/18071328/Andhra-Pradesh-3.png'
    },
    {
    'sName' : 'Maharashtra',
    'img' : 'https://assets-news.housing.com/news/wp-content/uploads/2022/08/18071328/Andhra-Pradesh-3.png'
    },
    {
    'sName' : 'Manipur',
    'img' : 'https://assets-news.housing.com/news/wp-content/uploads/2022/08/18071328/Andhra-Pradesh-3.png'
    },
    {
    'sName' : 'Meghalaya',
    'img' : 'https://assets-news.housing.com/news/wp-content/uploads/2022/08/18071328/Andhra-Pradesh-3.png'
    },
    {
    'sName' : 'Mizoram',
    'img' : 'https://assets-news.housing.com/news/wp-content/uploads/2022/08/18071328/Andhra-Pradesh-3.png'
    },
    {
    'sName' : 'Nagaland',
    'img' : 'https://assets-news.housing.com/news/wp-content/uploads/2022/08/18071328/Andhra-Pradesh-3.png'
    },
    {
    'sName' : 'Odisha',
    'img' : 'https://assets-news.housing.com/news/wp-content/uploads/2022/08/18071328/Andhra-Pradesh-3.png'
    },
    {
    'sName' : 'Punjab',
    'img' : 'https://assets-news.housing.com/news/wp-content/uploads/2022/08/18071328/Andhra-Pradesh-3.png'
    },
    {
    'sName' : 'Rajasthan',
    'img' : 'https://assets-news.housing.com/news/wp-content/uploads/2022/08/18071328/Andhra-Pradesh-3.png'
    },
    {
    'sName' : 'Sikkim',
    'img' : 'https://assets-news.housing.com/news/wp-content/uploads/2022/08/18071328/Andhra-Pradesh-3.png'
    },
    {
    'sName' : 'Tamil Nadu',
    'img' : 'https://assets-news.housing.com/news/wp-content/uploads/2022/08/18071328/Andhra-Pradesh-3.png'
    },
    {
    'sName' : 'Telangana',
    'img' : 'https://assets-news.housing.com/news/wp-content/uploads/2022/08/18071328/Andhra-Pradesh-3.png'
    },
    {
    'sName' : 'Tripura',
    'img' : 'https://assets-news.housing.com/news/wp-content/uploads/2022/08/18071328/Andhra-Pradesh-3.png'
    },
    {
    'sName' : 'Uttarakhand',
    'img' : 'https://assets-news.housing.com/news/wp-content/uploads/2022/08/18071328/Andhra-Pradesh-3.png'
    },
    {
    'sName' : 'Uttar Pradesh',
    'img' : 'https://assets-news.housing.com/news/wp-content/uploads/2022/08/18071328/Andhra-Pradesh-3.png'
    },
    {
    'sName' : 'West Bengal',
    'img' : 'https://assets-news.housing.com/news/wp-content/uploads/2022/08/18071328/Andhra-Pradesh-3.png'
    }*/
  ];
}

class FamousPlaceList
{
  List<Map<String, dynamic>> famousPlace=[
    {
      'fName' : 'Araku Valley',
      'imgP' : 'https://www.holidify.com/images/bgImages/ARAKU-VALLEY.jpg',
      'desc' : 'Araku Valley is a comparatively unexplored hill station mostly visited by locals as a weekend getaway and is situated some 120 kilometres away from Vishakhapatnam. If youre a tourist looking for exclusivity and tranquillity, Vistadome train leaves Vishakhapatnam at 6.50 AM, making way through 58 tunnels and passing over 84 bridges making way through the breathtaking landscape to reach Araku in approximately in 5 hours, go, catch that!Located in the gentle hills of Eastern Ghats, Araku Valley is also home to a number of tribes as well. This valley is also home to a few tribal caves and the Museum of Tribal Arts, which are an experience in their own right. This destination is quite famous for its exquisite coffee, whose subtle aroma will have you craving for a cuppa. In addition to being a beautiful vista point, you can also try your hand at a number of adventure sports here, which include trekking and swimming as well. If a holiday to the hills is your call but you think you have seen it all, maybe you should to wait till you visit this one.'
    },
    {
      'fName' : 'Gandikota',
      'imgP' : 'https://www.holidify.com/images/bgImages/GANDIKOTA.jpg',
      'desc' : 'Endearingly known as the ‘Grand Canyon of India’, Gandikota is a small and quaint village in the Kadapa district of Andhra Pradesh. Flanked by River Pennar on the right side, the village is famous for the spectacular gorges formed by the river cutting through Erramala Hills. The narrow valleys with streams running between them and the steep rocky walls are reminiscent of the renowned Grand Canyon in Arizona. It requires a walk of almost a kilometre from the main gate to reach the boulder from where you can observe the mesmerising view from the viewpoint near the fort.Located 1.5 hours away from Belum Caves, the highlight of the village of Gandikota is the ruins of Gandikota Fort, which was built in the 13th Century. The sturdy fort is flanked by the Pennar gorges on both sides and is protected by a majestic 5-mile wall. Built-in red sandstone, the fort boasts beautiful, intricate carvings in the interior. It also offers sweeping views of the hills and valleys below. In addition to a granary, jail and ruins of some temples, there are several structures within the fort that you can visit.'
    },
    {
      'fName' : 'Goa',
      'imgP' : 'https://www.holidify.com/images/bgImages/GOA.jpg',
      'desc' : 'Lying on the western coast, Goa is Indias smallest state and unlike any other, known for its endless beaches, stellar nightlife, eclectic seafood, world-heritage listed architecture. Spread across just 3,702 km, Goa lies in the Konkan region. It is a far cry from the hippie haven or a beach getaway, and one of the only few destinations that is open 24x7. The laid-backness (susegad) of Goa attracts as many international tourists as it does Indians, or even more so.The Goans are quite friendly towards tourists and celebrate many festivals throughout the year, the most famous being the New Year and Goa Carnival. While the seafood is excellent, Goa has one of the best nightlife in India with trendy bars, beach shacks, elegant cafes and many clubs and discotheques. Thanks to lower alcohol prices in the state, Goa is also great for younger tourists with relatively tighter pockets.'
    },
    {
      'fName' : 'Ooty',
      'imgP' : 'https://www.holidify.com/images/bgImages/OOTY.jpg',
      'desc' : 'Nilgiri Mountain Railway, also known as Toy Train in Ooty, is one of the key attractions of the popular hill station Ooty. Such is the trains popularity and history that it was declared as a World Heritage Site by UNESCO in 2005. Started in the year 1899, it has continued to charm its visitors over the past many years winding its way through the best of nature.The Toy Train covers a distance of total 46 km in a span of 5 hours and takes one through a truly spectacular journey filled with picturesque views en route. Another fascinating feature of the train is that its youngest X-class locomotive is over 50 years old and the oldest is 80 years old.Weaving amidst the forests, dark snaking tunnels, sharp bends, and amid mist and fog, the Nilgiri Mountain Train will take you on a spectacular trip up and down the green slopes. Apart from offering a beautiful journey, the uniqueness of the trip lies in the fact that the rail system is the steepest in Asia and worth a visit.'
    },
    {
      'fName' : 'Himachal',
      'imgP' : 'https://www.holidify.com/images/cmsuploads/compressed/2923_20190315194449.jpg',
      'desc' : 'Endearingly known as the ‘Grand Canyon of India’, Gandikota is a small and quaint village in the Kadapa district of Andhra Pradesh. Flanked by River Pennar on the right side, the village is famous for the spectacular gorges formed by the river cutting through Erramala Hills. The narrow valleys with streams running between them and the steep rocky walls are reminiscent of the renowned Grand Canyon in Arizona. It requires a walk of almost a kilometre from the main gate to reach the boulder from where you can observe the mesmerising view from the viewpoint near the fort.Located 1.5 hours away from Belum Caves, the highlight of the village of Gandikota is the ruins of Gandikota Fort, which was built in the 13th Century. The sturdy fort is flanked by the Pennar gorges on both sides and is protected by a majestic 5-mile wall. Built-in red sandstone, the fort boasts beautiful, intricate carvings in the interior. It also offers sweeping views of the hills and valleys below. In addition to a granary, jail and ruins of some temples, there are several structures within the fort that you can visit.'
    },
    {
      'fName' : 'Kashmir',
      'imgP' : 'https://www.holidify.com/images/bgImages/JAMMU-AND-KASHMIR.jpg',
      'desc' : 'Lying on the western coast, Goa is Indias smallest state and unlike any other, known for its endless beaches, stellar nightlife, eclectic seafood, world-heritage listed architecture. Spread across just 3,702 km, Goa lies in the Konkan region. It is a far cry from the hippie haven or a beach getaway, and one of the only few destinations that is open 24x7. The laid-backness (susegad) of Goa attracts as many international tourists as it does Indians, or even more so.The Goans are quite friendly towards tourists and celebrate many festivals throughout the year, the most famous being the New Year and Goa Carnival. While the seafood is excellent, Goa has one of the best nightlife in India with trendy bars, beach shacks, elegant cafes and many clubs and discotheques. Thanks to lower alcohol prices in the state, Goa is also great for younger tourists with relatively tighter pockets.'
    },
    {
      'fName' : 'Leh Ladakh',
      'imgP' : 'https://www.holidify.com/images/bgImages/LADAKH.jpg',
      'desc' : 'Araku Valley is a comparatively unexplored hill station mostly visited by locals as a weekend getaway and is situated some 120 kilometres away from Vishakhapatnam. If youre a tourist looking for exclusivity and tranquillity, Vistadome train leaves Vishakhapatnam at 6.50 AM, making way through 58 tunnels and passing over 84 bridges making way through the breathtaking landscape to reach Araku in approximately in 5 hours, go, catch that!Located in the gentle hills of Eastern Ghats, Araku Valley is also home to a number of tribes as well. This valley is also home to a few tribal caves and the Museum of Tribal Arts, which are an experience in their own right. This destination is quite famous for its exquisite coffee, whose subtle aroma will have you craving for a cuppa. In addition to being a beautiful vista point, you can also try your hand at a number of adventure sports here, which include trekking and swimming as well. If a holiday to the hills is your call but you think you have seen it all, maybe you should to wait till you visit this one.'
    },
    {
      'fName' : 'Mussoorie',
      'imgP' : 'https://www.holidify.com/images/bgImages/MUSSOORIE.jpg',
      'desc' : 'Endearingly known as the ‘Grand Canyon of India’, Gandikota is a small and quaint village in the Kadapa district of Andhra Pradesh. Flanked by River Pennar on the right side, the village is famous for the spectacular gorges formed by the river cutting through Erramala Hills. The narrow valleys with streams running between them and the steep rocky walls are reminiscent of the renowned Grand Canyon in Arizona. It requires a walk of almost a kilometre from the main gate to reach the boulder from where you can observe the mesmerising view from the viewpoint near the fort.Located 1.5 hours away from Belum Caves, the highlight of the village of Gandikota is the ruins of Gandikota Fort, which was built in the 13th Century. The sturdy fort is flanked by the Pennar gorges on both sides and is protected by a majestic 5-mile wall. Built-in red sandstone, the fort boasts beautiful, intricate carvings in the interior. It also offers sweeping views of the hills and valleys below. In addition to a granary, jail and ruins of some temples, there are several structures within the fort that you can visit.'
    },
    {
      'fName' : 'NUBRA Valley',
      'imgP' : 'https://www.holidify.com/images/bgImages/NUBRA-VALLEY.jpg',
      'desc' : 'Lying on the western coast, Goa is Indias smallest state and unlike any other, known for its endless beaches, stellar nightlife, eclectic seafood, world-heritage listed architecture. Spread across just 3,702 km, Goa lies in the Konkan region. It is a far cry from the hippie haven or a beach getaway, and one of the only few destinations that is open 24x7. The laid-backness (susegad) of Goa attracts as many international tourists as it does Indians, or even more so.The Goans are quite friendly towards tourists and celebrate many festivals throughout the year, the most famous being the New Year and Goa Carnival. While the seafood is excellent, Goa has one of the best nightlife in India with trendy bars, beach shacks, elegant cafes and many clubs and discotheques. Thanks to lower alcohol prices in the state, Goa is also great for younger tourists with relatively tighter pockets.'
    }, {
      'fName' : 'Kashmir',
      'imgP' : 'https://www.holidify.com/images/bgImages/JAMMU-AND-KASHMIR.jpg',
      'desc' : 'Lying on the western coast, Goa is Indias smallest state and unlike any other, known for its endless beaches, stellar nightlife, eclectic seafood, world-heritage listed architecture. Spread across just 3,702 km, Goa lies in the Konkan region. It is a far cry from the hippie haven or a beach getaway, and one of the only few destinations that is open 24x7. The laid-backness (susegad) of Goa attracts as many international tourists as it does Indians, or even more so.The Goans are quite friendly towards tourists and celebrate many festivals throughout the year, the most famous being the New Year and Goa Carnival. While the seafood is excellent, Goa has one of the best nightlife in India with trendy bars, beach shacks, elegant cafes and many clubs and discotheques. Thanks to lower alcohol prices in the state, Goa is also great for younger tourists with relatively tighter pockets.'
    },
  ];
}

class StateBestPlaceData
{
  List<Map<String, dynamic>> stateBestPlace=[
    {
      '1' : 'Araku Valley', 'img1' : 'https://www.holidify.com/images/bgImages/ARAKU-VALLEY.jpg',
      '2' : 'Vishakhapatnam', 'img2' : 'https://www.holidify.com/images/bgImages/VISAKHAPATNAM.jpg',
      '3' : 'Tirupati', 'img3' : 'https://www.holidify.com/images/bgImages/TIRUPATI.jpg',
      '4' : 'Vijayawada', 'img4' : 'https://www.holidify.com/images/bgImages/VIJAYAWADA.jpg',
      '5' : 'Anantpur', 'img5' : 'https://www.holidify.com/images/bgImages/ANANTAPUR.jpg',
      '6' : 'Ananthagiri Hills', 'img6' : 'https://www.holidify.com/images/bgImages/ANANTHAGIRI-HILLS.jpg',
      '7' : 'Kurnool', 'img7' : 'https://www.holidify.com/images/bgImages/KURNOOL.jpg',
      '8' : 'Guntur', 'img8' : 'https://www.holidify.com/images/bgImages/GUNTUR.jpg',
      '9' : 'Nellore', 'img9' : 'https://www.holidify.com/images/bgImages/NELLORE.jpg',
      '10' : 'Lepakshi', 'img10' : 'https://www.holidify.com/images/bgImages/LEPAKSHI.jpg',
      '11' : 'Vijayawada', 'img11' : 'https://www.holidify.com/images/bgImages/VIJAYAWADA.jpg',
      '12' : 'Anantpur', 'img12' : 'https://www.holidify.com/images/bgImages/ANANTAPUR.jpg',
    },
    {
      '1' : 'Tawang', 'img1' : 'https://media2.thrillophilia.com/images/photos/000/133/733/original/1538813784_shutterstock_734071876.jpg?w=753&h=450&dpr=1.5',
      '2' : 'Ziro Valley', 'img2' : 'https://media2.thrillophilia.com/images/photos/000/133/736/original/1538803788_shutterstock_1162108450_ziro.jpg?w=753&h=450&dpr=1.5',
      '3' : 'Namdapha National Park', 'img3' : 'https://media2.thrillophilia.com/images/photos/000/133/750/original/1538807313_namdapha.jpg?w=753&h=450&dpr=1.5',
      '4' : 'Sela Pass', 'img4' : 'https://media2.thrillophilia.com/images/photos/000/133/734/original/1538803558_shutterstock_1159163848_sela.jpg?w=753&h=450&dpr=1.5',
      '5' : 'Tezu', 'img5' : 'https://media2.thrillophilia.com/images/photos/000/133/764/original/1538811612_tezu.jpg?w=753&h=450&dpr=1.5',
      '6' : 'Roing', 'img6' : 'https://media2.thrillophilia.com/images/photos/000/133/738/original/1538804104_roing.jpg?w=753&h=450&dpr=1.5',
      '7' : 'Bomdila', 'img7' : 'https://media2.thrillophilia.com/images/photos/000/133/737/original/1538803854_shutterstock_151196357_bom.jpg?w=753&h=450&dpr=1.5',
      '8' : 'Dirang', 'img8' : 'https://media2.thrillophilia.com/images/photos/000/133/744/original/1538805736_shutterstock_159897461_dirang.jpg?w=753&h=450&dpr=1.5',
      '9' : 'Pasighat', 'img9' : 'https://media2.thrillophilia.com/images/photos/000/133/740/original/1538804372_shutterstock_1122704969_pasighat.jpg?w=753&h=450&dpr=1.5',
      '10' : 'Itanagar', 'img10' : 'https://media2.thrillophilia.com/images/photos/000/133/735/original/1538803440_shutterstock_1160360857_itna.jpg?w=753&h=450&dpr=1.5',
      '11' : 'Vijayawada', 'img11' : 'https://www.holidify.com/images/bgImages/VIJAYAWADA.jpg',
      '12' : 'Anantpur', 'img12' : 'https://www.holidify.com/images/bgImages/ANANTAPUR.jpg',
    },
    {
      '1' : 'Kaziranga National Park', 'img1' : 'https://www.holidify.com/images/bgImages/KAZIRANGA-NATIONAL-PARK.jpg',
      '2' : 'Majuli', 'img2' : 'https://www.holidify.com/images/bgImages/MAJULI.jpg',
      '3' : 'Guwahati', 'img3' : 'https://www.holidify.com/images/bgImages/GUWAHATI.jpg',
      '4' : 'Dibrugarh', 'img4' : 'https://www.holidify.com/images/bgImages/DIBRUGARH.jpg',
      '5' : 'Jorhat', 'img5' : 'https://www.holidify.com/images/bgImages/JORHAT.jpg',
      '6' : 'Hajo', 'img6' : 'https://www.holidify.com/images/bgImages/HAJO.jpg',
      '7' : 'Bogamati', 'img7' : 'https://www.holidify.com/images/cmsuploads/compressed/maxresdefault_20190704173152.jpg',
      '8' : 'Dibru Saikhowa National Park', 'img8' : 'https://www.holidify.com/images/bgImages/DIBRU-SAIKHOWA-NATIONAL-PARK.jpg',
      '9' : 'Barpeta', 'img9' : 'https://www.holidify.com/images/bgImages/BARPETA.jpg',
      '10' : 'Umananda Island', 'img10' : 'https://www.holidify.com/images/cmsuploads/compressed/attr_8149_20190226130826jpg',
      '11' : 'Jorhat', 'img11' : 'https://www.holidify.com/images/bgImages/VIJAYAWADA.jpg',
      '12' : 'Barpeta', 'img12' : 'https://www.holidify.com/images/bgImages/ANANTAPUR.jpg',
    },
    {
      '1' : 'Araku Valley', 'img1' : 'https://www.holidify.com/images/bgImages/ARAKU-VALLEY.jpg',
      '2' : 'Vishakhapatnam', 'img2' : 'https://www.holidify.com/images/bgImages/VISAKHAPATNAM.jpg',
      '3' : 'Tirupati', 'img3' : 'https://www.holidify.com/images/bgImages/TIRUPATI.jpg',
      '4' : 'Vijayawada', 'img4' : 'https://www.holidify.com/images/bgImages/VIJAYAWADA.jpg',
      '5' : 'Anantpur', 'img5' : 'https://www.holidify.com/images/bgImages/ANANTAPUR.jpg',
      '6' : 'Ananthagiri Hills', 'img6' : 'https://www.holidify.com/images/bgImages/ANANTHAGIRI-HILLS.jpg',
      '7' : 'Kurnool', 'img7' : 'https://www.holidify.com/images/bgImages/KURNOOL.jpg',
      '8' : 'Guntur', 'img8' : 'https://www.holidify.com/images/bgImages/GUNTUR.jpg',
      '9' : 'Nellore', 'img9' : 'https://www.holidify.com/images/bgImages/NELLORE.jpg',
      '10' : 'Lepakshi', 'img10' : 'https://www.holidify.com/images/bgImages/LEPAKSHI.jpg',
      '11' : 'Vijayawada', 'img11' : 'https://www.holidify.com/images/bgImages/VIJAYAWADA.jpg',
      '12' : 'Anantpur', 'img12' : 'https://www.holidify.com/images/bgImages/ANANTAPUR.jpg',
    },
    {
      '1' : 'Tawang', 'img1' : 'https://media2.thrillophilia.com/images/photos/000/133/733/original/1538813784_shutterstock_734071876.jpg?w=753&h=450&dpr=1.5',
      '2' : 'Ziro Valley', 'img2' : 'https://media2.thrillophilia.com/images/photos/000/133/736/original/1538803788_shutterstock_1162108450_ziro.jpg?w=753&h=450&dpr=1.5',
      '3' : 'Namdapha National Park', 'img3' : 'https://media2.thrillophilia.com/images/photos/000/133/750/original/1538807313_namdapha.jpg?w=753&h=450&dpr=1.5',
      '4' : 'Sela Pass', 'img4' : 'https://media2.thrillophilia.com/images/photos/000/133/734/original/1538803558_shutterstock_1159163848_sela.jpg?w=753&h=450&dpr=1.5',
      '5' : 'Tezu', 'img5' : 'https://media2.thrillophilia.com/images/photos/000/133/764/original/1538811612_tezu.jpg?w=753&h=450&dpr=1.5',
      '6' : 'Roing', 'img6' : 'https://media2.thrillophilia.com/images/photos/000/133/738/original/1538804104_roing.jpg?w=753&h=450&dpr=1.5',
      '7' : 'Bomdila', 'img7' : 'https://media2.thrillophilia.com/images/photos/000/133/737/original/1538803854_shutterstock_151196357_bom.jpg?w=753&h=450&dpr=1.5',
      '8' : 'Dirang', 'img8' : 'https://media2.thrillophilia.com/images/photos/000/133/744/original/1538805736_shutterstock_159897461_dirang.jpg?w=753&h=450&dpr=1.5',
      '9' : 'Pasighat', 'img9' : 'https://media2.thrillophilia.com/images/photos/000/133/740/original/1538804372_shutterstock_1122704969_pasighat.jpg?w=753&h=450&dpr=1.5',
      '10' : 'Itanagar', 'img10' : 'https://media2.thrillophilia.com/images/photos/000/133/735/original/1538803440_shutterstock_1160360857_itna.jpg?w=753&h=450&dpr=1.5',
      '11' : 'Vijayawada', 'img11' : 'https://www.holidify.com/images/bgImages/VIJAYAWADA.jpg',
      '12' : 'Anantpur', 'img12' : 'https://www.holidify.com/images/bgImages/ANANTAPUR.jpg',
    },
    {
      '1' : 'Kaziranga National Park', 'img1' : 'https://www.holidify.com/images/bgImages/KAZIRANGA-NATIONAL-PARK.jpg',
      '2' : 'Majuli', 'img2' : 'https://www.holidify.com/images/bgImages/MAJULI.jpg',
      '3' : 'Guwahati', 'img3' : 'https://www.holidify.com/images/bgImages/GUWAHATI.jpg',
      '4' : 'Dibrugarh', 'img4' : 'https://www.holidify.com/images/bgImages/DIBRUGARH.jpg',
      '5' : 'Jorhat', 'img5' : 'https://www.holidify.com/images/bgImages/JORHAT.jpg',
      '6' : 'Hajo', 'img6' : 'https://www.holidify.com/images/bgImages/HAJO.jpg',
      '7' : 'Bogamati', 'img7' : 'https://www.holidify.com/images/cmsuploads/compressed/maxresdefault_20190704173152.jpg',
      '8' : 'Dibru Saikhowa National Park', 'img8' : 'https://www.holidify.com/images/bgImages/DIBRU-SAIKHOWA-NATIONAL-PARK.jpg',
      '9' : 'Barpeta', 'img9' : 'https://www.holidify.com/images/bgImages/BARPETA.jpg',
      '10' : 'Umananda Island', 'img10' : 'https://www.holidify.com/images/cmsuploads/compressed/attr_8149_20190226130826jpg',
      '11' : 'Jorhat', 'img11' : 'https://www.holidify.com/images/bgImages/VIJAYAWADA.jpg',
      '12' : 'Barpeta', 'img12' : 'https://www.holidify.com/images/bgImages/ANANTAPUR.jpg',
    },
    {
      '1' : 'Araku Valley', 'img1' : 'https://www.holidify.com/images/bgImages/ARAKU-VALLEY.jpg',
      '2' : 'Vishakhapatnam', 'img2' : 'https://www.holidify.com/images/bgImages/VISAKHAPATNAM.jpg',
      '3' : 'Tirupati', 'img3' : 'https://www.holidify.com/images/bgImages/TIRUPATI.jpg',
      '4' : 'Vijayawada', 'img4' : 'https://www.holidify.com/images/bgImages/VIJAYAWADA.jpg',
      '5' : 'Anantpur', 'img5' : 'https://www.holidify.com/images/bgImages/ANANTAPUR.jpg',
      '6' : 'Ananthagiri Hills', 'img6' : 'https://www.holidify.com/images/bgImages/ANANTHAGIRI-HILLS.jpg',
      '7' : 'Kurnool', 'img7' : 'https://www.holidify.com/images/bgImages/KURNOOL.jpg',
      '8' : 'Guntur', 'img8' : 'https://www.holidify.com/images/bgImages/GUNTUR.jpg',
      '9' : 'Nellore', 'img9' : 'https://www.holidify.com/images/bgImages/NELLORE.jpg',
      '10' : 'Lepakshi', 'img10' : 'https://www.holidify.com/images/bgImages/LEPAKSHI.jpg',
      '11' : 'Vijayawada', 'img11' : 'https://www.holidify.com/images/bgImages/VIJAYAWADA.jpg',
      '12' : 'Anantpur', 'img12' : 'https://www.holidify.com/images/bgImages/ANANTAPUR.jpg',
    },
    {
      '1' : 'Tawang', 'img1' : 'https://media2.thrillophilia.com/images/photos/000/133/733/original/1538813784_shutterstock_734071876.jpg?w=753&h=450&dpr=1.5',
      '2' : 'Ziro Valley', 'img2' : 'https://media2.thrillophilia.com/images/photos/000/133/736/original/1538803788_shutterstock_1162108450_ziro.jpg?w=753&h=450&dpr=1.5',
      '3' : 'Namdapha National Park', 'img3' : 'https://media2.thrillophilia.com/images/photos/000/133/750/original/1538807313_namdapha.jpg?w=753&h=450&dpr=1.5',
      '4' : 'Sela Pass', 'img4' : 'https://media2.thrillophilia.com/images/photos/000/133/734/original/1538803558_shutterstock_1159163848_sela.jpg?w=753&h=450&dpr=1.5',
      '5' : 'Tezu', 'img5' : 'https://media2.thrillophilia.com/images/photos/000/133/764/original/1538811612_tezu.jpg?w=753&h=450&dpr=1.5',
      '6' : 'Roing', 'img6' : 'https://media2.thrillophilia.com/images/photos/000/133/738/original/1538804104_roing.jpg?w=753&h=450&dpr=1.5',
      '7' : 'Bomdila', 'img7' : 'https://media2.thrillophilia.com/images/photos/000/133/737/original/1538803854_shutterstock_151196357_bom.jpg?w=753&h=450&dpr=1.5',
      '8' : 'Dirang', 'img8' : 'https://media2.thrillophilia.com/images/photos/000/133/744/original/1538805736_shutterstock_159897461_dirang.jpg?w=753&h=450&dpr=1.5',
      '9' : 'Pasighat', 'img9' : 'https://media2.thrillophilia.com/images/photos/000/133/740/original/1538804372_shutterstock_1122704969_pasighat.jpg?w=753&h=450&dpr=1.5',
      '10' : 'Itanagar', 'img10' : 'https://media2.thrillophilia.com/images/photos/000/133/735/original/1538803440_shutterstock_1160360857_itna.jpg?w=753&h=450&dpr=1.5',
      '11' : 'Vijayawada', 'img11' : 'https://www.holidify.com/images/bgImages/VIJAYAWADA.jpg',
      '12' : 'Anantpur', 'img12' : 'https://www.holidify.com/images/bgImages/ANANTAPUR.jpg',
    },
    {
      '1' : 'Kaziranga National Park', 'img1' : 'https://www.holidify.com/images/bgImages/KAZIRANGA-NATIONAL-PARK.jpg',
      '2' : 'Majuli', 'img2' : 'https://www.holidify.com/images/bgImages/MAJULI.jpg',
      '3' : 'Guwahati', 'img3' : 'https://www.holidify.com/images/bgImages/GUWAHATI.jpg',
      '4' : 'Dibrugarh', 'img4' : 'https://www.holidify.com/images/bgImages/DIBRUGARH.jpg',
      '5' : 'Jorhat', 'img5' : 'https://www.holidify.com/images/bgImages/JORHAT.jpg',
      '6' : 'Hajo', 'img6' : 'https://www.holidify.com/images/bgImages/HAJO.jpg',
      '7' : 'Bogamati', 'img7' : 'https://www.holidify.com/images/cmsuploads/compressed/maxresdefault_20190704173152.jpg',
      '8' : 'Dibru Saikhowa National Park', 'img8' : 'https://www.holidify.com/images/bgImages/DIBRU-SAIKHOWA-NATIONAL-PARK.jpg',
      '9' : 'Barpeta', 'img9' : 'https://www.holidify.com/images/bgImages/BARPETA.jpg',
      '10' : 'Umananda Island', 'img10' : 'https://www.holidify.com/images/cmsuploads/compressed/attr_8149_20190226130826jpg',
      '11' : 'Jorhat', 'img11' : 'https://www.holidify.com/images/bgImages/VIJAYAWADA.jpg',
      '12' : 'Barpeta', 'img12' : 'https://www.holidify.com/images/bgImages/ANANTAPUR.jpg',
    },
    {
      '1' : 'Araku Valley', 'img1' : 'https://www.holidify.com/images/bgImages/ARAKU-VALLEY.jpg',
      '2' : 'Vishakhapatnam', 'img2' : 'https://www.holidify.com/images/bgImages/VISAKHAPATNAM.jpg',
      '3' : 'Tirupati', 'img3' : 'https://www.holidify.com/images/bgImages/TIRUPATI.jpg',
      '4' : 'Vijayawada', 'img4' : 'https://www.holidify.com/images/bgImages/VIJAYAWADA.jpg',
      '5' : 'Anantpur', 'img5' : 'https://www.holidify.com/images/bgImages/ANANTAPUR.jpg',
      '6' : 'Ananthagiri Hills', 'img6' : 'https://www.holidify.com/images/bgImages/ANANTHAGIRI-HILLS.jpg',
      '7' : 'Kurnool', 'img7' : 'https://www.holidify.com/images/bgImages/KURNOOL.jpg',
      '8' : 'Guntur', 'img8' : 'https://www.holidify.com/images/bgImages/GUNTUR.jpg',
      '9' : 'Nellore', 'img9' : 'https://www.holidify.com/images/bgImages/NELLORE.jpg',
      '10' : 'Lepakshi', 'img10' : 'https://www.holidify.com/images/bgImages/LEPAKSHI.jpg',
      '11' : 'Vijayawada', 'img11' : 'https://www.holidify.com/images/bgImages/VIJAYAWADA.jpg',
      '12' : 'Anantpur', 'img12' : 'https://www.holidify.com/images/bgImages/ANANTAPUR.jpg',
    },
    {
      '1' : 'Tawang', 'img1' : 'https://media2.thrillophilia.com/images/photos/000/133/733/original/1538813784_shutterstock_734071876.jpg?w=753&h=450&dpr=1.5',
      '2' : 'Ziro Valley', 'img2' : 'https://media2.thrillophilia.com/images/photos/000/133/736/original/1538803788_shutterstock_1162108450_ziro.jpg?w=753&h=450&dpr=1.5',
      '3' : 'Namdapha National Park', 'img3' : 'https://media2.thrillophilia.com/images/photos/000/133/750/original/1538807313_namdapha.jpg?w=753&h=450&dpr=1.5',
      '4' : 'Sela Pass', 'img4' : 'https://media2.thrillophilia.com/images/photos/000/133/734/original/1538803558_shutterstock_1159163848_sela.jpg?w=753&h=450&dpr=1.5',
      '5' : 'Tezu', 'img5' : 'https://media2.thrillophilia.com/images/photos/000/133/764/original/1538811612_tezu.jpg?w=753&h=450&dpr=1.5',
      '6' : 'Roing', 'img6' : 'https://media2.thrillophilia.com/images/photos/000/133/738/original/1538804104_roing.jpg?w=753&h=450&dpr=1.5',
      '7' : 'Bomdila', 'img7' : 'https://media2.thrillophilia.com/images/photos/000/133/737/original/1538803854_shutterstock_151196357_bom.jpg?w=753&h=450&dpr=1.5',
      '8' : 'Dirang', 'img8' : 'https://media2.thrillophilia.com/images/photos/000/133/744/original/1538805736_shutterstock_159897461_dirang.jpg?w=753&h=450&dpr=1.5',
      '9' : 'Pasighat', 'img9' : 'https://media2.thrillophilia.com/images/photos/000/133/740/original/1538804372_shutterstock_1122704969_pasighat.jpg?w=753&h=450&dpr=1.5',
      '10' : 'Itanagar', 'img10' : 'https://media2.thrillophilia.com/images/photos/000/133/735/original/1538803440_shutterstock_1160360857_itna.jpg?w=753&h=450&dpr=1.5',
      '11' : 'Vijayawada', 'img11' : 'https://www.holidify.com/images/bgImages/VIJAYAWADA.jpg',
      '12' : 'Anantpur', 'img12' : 'https://www.holidify.com/images/bgImages/ANANTAPUR.jpg',
    },
    {
      '1' : 'Kaziranga National Park', 'img1' : 'https://www.holidify.com/images/bgImages/KAZIRANGA-NATIONAL-PARK.jpg',
      '2' : 'Majuli', 'img2' : 'https://www.holidify.com/images/bgImages/MAJULI.jpg',
      '3' : 'Guwahati', 'img3' : 'https://www.holidify.com/images/bgImages/GUWAHATI.jpg',
      '4' : 'Dibrugarh', 'img4' : 'https://www.holidify.com/images/bgImages/DIBRUGARH.jpg',
      '5' : 'Jorhat', 'img5' : 'https://www.holidify.com/images/bgImages/JORHAT.jpg',
      '6' : 'Hajo', 'img6' : 'https://www.holidify.com/images/bgImages/HAJO.jpg',
      '7' : 'Bogamati', 'img7' : 'https://www.holidify.com/images/cmsuploads/compressed/maxresdefault_20190704173152.jpg',
      '8' : 'Dibru Saikhowa National Park', 'img8' : 'https://www.holidify.com/images/bgImages/DIBRU-SAIKHOWA-NATIONAL-PARK.jpg',
      '9' : 'Barpeta', 'img9' : 'https://www.holidify.com/images/bgImages/BARPETA.jpg',
      '10' : 'Umananda Island', 'img10' : 'https://www.holidify.com/images/cmsuploads/compressed/attr_8149_20190226130826jpg',
      '11' : 'Jorhat', 'img11' : 'https://www.holidify.com/images/bgImages/VIJAYAWADA.jpg',
      '12' : 'Barpeta', 'img12' : 'https://www.holidify.com/images/bgImages/ANANTAPUR.jpg',
    },
  ];
}