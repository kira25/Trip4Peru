class Hotel {

String imageUrl;
String name;
String address;
int price;

Hotel({this.address,this.imageUrl,this.name,this.price});


}

final List<Hotel> hotels = [
  Hotel(
    imageUrl: './',
    name: 'Hotel 1',
    address: 'Direccion 1',
    price: 175
  ),
  Hotel(
    imageUrl: './',
    name: 'Hotel 2',
    address: 'Direccion 2',
    price: 200
  ),
  Hotel(
    imageUrl: './',
    name: 'Hotel 3',
    address: 'Direccion 3',
    price: 100
  ),
];