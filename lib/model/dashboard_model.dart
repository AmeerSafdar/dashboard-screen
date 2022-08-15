
import 'package:dashboardscreen/view/constants/images.dart';

class DashboardModel {
  final String name, imageAsset;
  final int number;

  DashboardModel({
     this.name,
     this.imageAsset,
     this.number,
  });
}

List<DashboardModel> dashboardList = [
  DashboardModel(name: 'My Animals', imageAsset: myAnimals, number: 2),
  DashboardModel(name: 'My Farm', imageAsset: myFarm, number: 18),
  DashboardModel(name: 'Milk Yield', imageAsset: milk, number: 2000),
  DashboardModel(name: 'Medical', imageAsset: medical, number: 2),
];
