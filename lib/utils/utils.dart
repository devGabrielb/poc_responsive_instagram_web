class Utils {
  static pxForPorcent(double screenSize, double sizeinPx) {
    return screenSize * ((sizeinPx * 100) / screenSize);
  }
}
