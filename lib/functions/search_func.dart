import 'package:ghars/data_to_be_accessed.dart';
import 'package:ghars/widgets/home_page_widgets/search_filed.dart';

List displayedList() {
  if (searchFiledController.text.toLowerCase().isNotEmpty) {
    isIndoor = false;
    isOutdoor = false;
    searchResult.clear();
    for (var element in listOfPlants) {
      if (element.name
          .toString()
          .toLowerCase()
          .contains(searchFiledController.text.toLowerCase())) {
        if (!searchResult.contains(element)) {
          searchResult.add(element);
        }
      }
    }
    return searchResult;
  } else if (isIndoor && isOutdoor == false) {
    return indoorPlants;
  } else if (isOutdoor && isIndoor == false) {
    return outdoorPlants;
  } else {
    return listOfPlants;
  }
}
