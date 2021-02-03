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
  mode.first.toString(): 500,
  mode.second.toString(): 600,
  mode.third.toString(): 900
};
