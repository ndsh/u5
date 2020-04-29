Textlabel stateTitle;
Textlabel stateLabel;
Textlabel frameRateLabel;
Textlabel inputLabel;
Textlabel brightnessInPercLabel;
CheckBox playCheckbox;
CheckBox offlineCheckbox;
CheckBox rotateCheckbox;
CheckBox redrawCheckbox;
CheckBox invertCheckbox;
ScrollableList overlayList;
ScrollableList backgroundList;
//ScrollableList textList;


void constructGUI() {
  // change the original colors
  color black = color(0, 0, 0);
  color white = color(0, 0, 255);
  color gray = color(0, 0, 125);
  cp5.setAutoDraw(cp5AutoDraw);
  /*
  cp5.addSlider("sliderBrightness")
   .setRange(0, 255)
   .setPosition(15, 110)
   .setValue(255)
   .setSize(100, 8)
   .setColorValue(black)
   ;
   cp5.addSlider("rotationSpeed")
   .setRange(0, 0.05)
   .setPosition(15, 120)
   .setValue(0.01)
   .setSize(100, 8)
   .setColorValue(black)
   ;
   cp5.addSlider("theFrameRate")
   .setRange(0, 100)
   .setPosition(15, 130)
   //.setValue(theFrameRate)
   .setSize(100, 8)
   .setColorValue(black)
   ;
   cp5.addSlider("linePixelPitch")
   .setRange(0, 10)
   .setPosition(15, 140)
   //.setValue(linePixelPitch)
   .setSize(100, 8)
   .setColorValue(black)
   ;
   cp5.addSlider("sliderOptions3")
   .setRange(0, 128)
   .setPosition(15, 150)
   .setValue(128)
   .setSize(100, 8)
   .setColorValue(black)
   ;
   cp5.addSlider("sliderOptions4")
   .setRange(0, 128)
   .setPosition(15, 160)
   .setValue(128)
   .setSize(100, 8)
   .setColorValue(black)
   ;
   
   stateTitle = cp5.addTextlabel("label1")
   .setText("Current state: ")
   .setPosition(10, 10)
   ;
   stateLabel = cp5.addTextlabel("label2")
   .setText("A single ControlP5 textlabel")
   .setPosition(70, 10)
   .setColorValue(0xffffff00)
   ;
   frameRateLabel = cp5.addTextlabel("label3")
   .setText("frameRate")
   .setPosition(10, 20)
   ;
   inputLabel = cp5.addTextlabel("label4")
   .setText("2D TEXTURE VIEW")
   .setPosition(10, height-140)
   ;
   
   brightnessInPercLabel = cp5.addTextlabel("label5")
   .setText("BRIGHTNESS: %")
   .setPosition(12, 100)
   ;
   
   
   
   playCheckbox = cp5.addCheckBox("playCheckbox")
   .setPosition(14, 30)
   .setSize(32, 8)
   .addItem("play", 1)
   ;
   offlineCheckbox = cp5.addCheckBox("offlineCheckbox")
   .setPosition(14, 40)
   .setSize(32, 8)
   .addItem("offline", 1)
   ;
   rotateCheckbox = cp5.addCheckBox("rotateCheckbox")
   .setPosition(14, 50)
   .setSize(32, 8)
   .addItem("rotate", 1)
   ;
   redrawCheckbox = cp5.addCheckBox("redrawCheckbox")
   .setPosition(14, 60)
   .setSize(32, 8)
   .addItem("redraw", 1)
   ;
   invertCheckbox = cp5.addCheckBox("invertCheckbox")
   .setPosition(14, 70)
   .setSize(32, 8)
   .addItem("invert", 1)
   ;
   cp5.addButton("prevDemo")
   .setValue(0)
   .setLabel("prev")
   .setPosition(14, 80)
   .setSize(32, 16)
   ;
   cp5.addButton("nextDemo")
   .setValue(0)
   .setLabel("next")
   .setPosition(50, 80)
   .setSize(32, 16)
   ;
   */

  overlayList = cp5.addScrollableList("overlayList")
    .setPosition(5, 5)
    .setSize(100, 400)
    .setBarHeight(20)
    .setItemHeight(20)
    .setType(ControlP5.LIST)
    .setLabel("Overlays")
    ;
  backgroundList = cp5.addScrollableList("backgroundList")
    .setPosition(109, 5)
    .setSize(100, 400)
    .setBarHeight(20)
    .setItemHeight(20)
    .setType(ControlP5.LIST)
    .setLabel("Backgrounds")
    ;

  checkImageDropdown();
  cp5.setColorForeground(gray);
  cp5.setColorBackground(black);
  cp5.setColorActive(white);

  // settings.json werte einpassen
  // checkboxes
  float[] y = {1f};
  float[] n = {0f};

  //playCheckbox.setArrayValue((play?y:n));
  //offlineCheckbox.setArrayValue((offline?y:n));
  //rotateCheckbox.setArrayValue((rotate?y:n));
  //redrawCheckbox.setArrayValue((redraw?y:n));

  //cp5.getController("sliderBrightness").setValue(tempBrightness);
  //cp5.getController("theFrameRate").setValue(tempFrameRate);
  //cp5.getController("linePixelPitch").setValue(linePixelPitch);
}

void overlayList(int n) {
  String s = (String)cp5.get(ScrollableList.class, "overlayList").getItem(n).get("text");
  // check if this is a valid image?

  if (s.length() > 0) overlay = loadImage(importer.getFiles().get(n));
  else println("[#] ERROR : the image is not valid. string size is low or equal than 0");
  refresh = true;
}

void backgroundList(int n) {
  String s = (String)cp5.get(ScrollableList.class, "backgroundList").getItem(n).get("text");
  // check if this is a valid image?
  currentTracer = n;
  refresh = true;
}

void checkImageDropdown() {
  /*
  if(overlayList != null) {
   if(state == 11) cp5.get(ScrollableList.class, "overlayList").show();
   else cp5.get(ScrollableList.class, "overlayList").hide();
   }
   */
}