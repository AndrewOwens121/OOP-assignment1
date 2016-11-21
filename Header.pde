void Header() {
  PFont font;
  font = loadFont("DefconZero3DItalic-48.vlw");
  textFont(font, 36);
  //HEADER "SONAR-DEFENCE-SYSTEM"
  fill(255);
  String Header = "SONAR_DEFENCE_SYSTEM";
  text(Header, 150, 50);
}