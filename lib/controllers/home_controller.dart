import 'package:flutter/cupertino.dart';

class HomeController extends ChangeNotifier {
  bool isRightDoorLock = true;
  bool isLiftDoorLock = true;
  bool isBonnetDoorLock = true;
  bool isTrankDoorLock = true;
  int selectedBottomTab = 0;

  void onBottomNavTapChange(int index) {
    selectedBottomTab = index;
    notifyListeners();
  }

  void updateRightDoorLock() {
    isRightDoorLock = !isRightDoorLock;
    notifyListeners();
  }

  void updateLiftDoorLock() {
    isLiftDoorLock = !isLiftDoorLock;
    notifyListeners();
  }

  void updateBonnetDoorLock() {
    isBonnetDoorLock = !isBonnetDoorLock;
    notifyListeners();
  }

  void updateTrankDoorLock() {
    isTrankDoorLock = !isTrankDoorLock;
    notifyListeners();
  }

  bool isCoolSelected = true;
  void updateCoolSelectedTap(){
    isCoolSelected = !isCoolSelected;
    notifyListeners();
  }

  bool isShowTyres = false;
  void showTyreContainer(int index){
    if(selectedBottomTab != 3 && index ==3){
      Future.delayed(
        const Duration(milliseconds: 400),
          (){
            isShowTyres = true;
            notifyListeners();
          }
      );

    }
    else{
      isShowTyres = false;
      notifyListeners();
    }
  }


  bool isShowTyreStatus = false;
  void tyreStatusContainer(int index){
   if(selectedBottomTab != 3 && index == 3){
     isShowTyreStatus = true;
     notifyListeners();
   }else{
     Future.delayed(
         const Duration(milliseconds: 800),
             (){
               isShowTyreStatus = false;
               notifyListeners();
         }
     );

   }
  }
}
