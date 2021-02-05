enum mode {
  first,
  second,
  third,
}

final gameModes = {
  mode.first.toString(): "10S",
  mode.second.toString(): "60S",
  mode.third.toString(): "ENDLESS"
};
final gameTimes = {
  mode.first.toString(): 200,
  mode.second.toString(): 400,
  mode.third.toString(): 900
};

final initalCounters = {
  mode.first.toString(): "10.00",
  mode.second.toString(): "60.00",
  mode.third.toString(): "No Limit"
};
