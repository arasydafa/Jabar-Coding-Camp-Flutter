rangeWithStep(startNum, finishNum, step) {
  List<int> list = [];

  if (startNum < finishNum) {
    for (var i = startNum; i <= finishNum; i += step) {
      list.add(i);
    }
  } else if (startNum > finishNum) {
    for (var i = finishNum; i >= startNum; i -= step) {
      list.add(i);
    }
  }
  return list;
}