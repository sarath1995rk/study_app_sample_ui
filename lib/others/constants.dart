import 'package:study_app_sample/model/programs.dart';
import 'package:study_app_sample/model/training.dart';

const List<Training> trainingList = [
  Training(1, 'Flutter', 'Banglore', 975, 825,
      'https://elearningindustry.com/wp-content/uploads/2019/10/employee-training-programs-that-work.jpg'),
  Training(1, 'Python', 'Pune', 1000, 800,
      'https://www.forafinancial.com/wp-content/uploads/2018/09/Employee-Training.jpg'),
  Training(1, 'Java', 'Delhi', 905, 865,
      'https://kitaboo.com/wp-content/uploads/2019/12/Image_1-3-1200x565.jpg'),
  Training(1, 'React Js', 'Mumbai', 800, 725,
      'https://elearningindustry.com/wp-content/uploads/2015/10/5-reasons-you-need-to-invest-in-employee-training.jpg'),
];

const List<Program> programsList = [
  Program(
      1,
      'Flutter Master',
      'Filling Fast!',
      'Mo Salah',
      'Jan 11-13, 2022',
      '8:30 am - 12:30 pm',
      'Kochi',
      'https://e0.365dm.com/21/03/2048x1152/skysports-mohamed-salah-liverpool_5323725.jpg'),
  Program(
      2,
      'Java Basics',
      'Early Bid',
      'Cristiano',
      'Feb 11-13, 2022',
      '9:30 am - 11:30 pm',
      'Banglore',
      'https://icdn.football-espana.net/wp-content/uploads/2021/12/Cristiano-Ronaldo-2.jpeg'),
  Program(
      3,
      'Python in 100 days',
      'Few Slots Left!',
      'Messi',
      'Jan 4-6, 2022',
      '7:30 am - 10:30 pm',
      'Kolkata',
      'https://imgresizer.eurosport.com/unsafe/2560x0/filters:format(jpeg)/origin-imgresizer.eurosport.com/2021/08/02/3191624-65387748-2560-1440.jpg'),
  Program(
      4,
      'React Master',
      'Filling Fast!',
      'Mbappe',
      'Feb 16-19, 2022',
      '10:30 am - 12:30 pm',
      'Delhi',
      'https://icdn.football-espana.net/wp-content/uploads/2021/12/manchester-city-v-paris-saint-germain-group-a-uefa-champions-league-2-1.jpg'),
  Program(
      5,
      'React Native Basics',
      'Early Bid',
      'Neymar',
      'Oct 11-13, 2020',
      '8:30 am - 12:30 pm',
      'Mumbai',
      'https://imgresizer.eurosport.com/unsafe/1200x0/filters:format(jpeg):focal(1342x669:1344x667)/origin-imgresizer.eurosport.com/2021/01/01/2963993-60835788-2560-1440.jpg'),
];

const List<String> sortList = ['Location', 'Training Name', 'Trainer'];

const List<String> locationList = ['Delhi', 'Mumbai', 'Kolkata', 'Kochi'];

const List<String> trainingNameList = ['Flutter', 'Java', 'Python', 'React'];

const List<String> trainerList = ['Salah', 'Neymar', 'Mbappe', 'Messi'];
