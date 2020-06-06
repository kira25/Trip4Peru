import 'package:trip4peru/models/activity_model.dart';

class Destination {
  String imageUrl;
  String city;
  String description;
  List<Activity> activities;

  Destination({this.imageUrl, this.activities, this.city, this.description});
}

List<Activity> activities = [
  Activity(
    imageUrl: './images/aventura1_arequipa.jpg',
    name: 'Maras Morai - Cuzco',
    type: 'tour',
    startTimes: ['9:00am', '11:00am'],
    rating: 5,
    price: 30,
  ),
  Activity(
    imageUrl: './images/aventura_1_ica.jpg',
    name: 'Tubular Dunas - Ica',
    type: 'tour',
    startTimes: ['9:00am', '11:00am'],
    rating: 4,
    price: 80,
  ),
  Activity(
    imageUrl: './images/aventura_1_cuzco.jpg',
    name: 'Chucuito - Arequipa',
    type: 'tour',
    startTimes: ['9:00am', '11:00am'],
    rating: 5,
    price: 50,
  ),
];

List<Destination> destinations = [
  Destination(
      imageUrl: './images/aventura1_arequipa.jpg',
      city: 'Arequipa',
      description: 'Places in Cuzco',
      activities: activities),
  Destination(
      imageUrl: './images/aventura_1_ica.jpg',
      city: 'Ica',
      description: 'Places en Ica',
      activities: activities),
  Destination(
      imageUrl: './images/aventura_1_cuzco.jpg',
      city: 'Cuzco',
      description: 'Places en Arequipa',
      activities: activities),
];
