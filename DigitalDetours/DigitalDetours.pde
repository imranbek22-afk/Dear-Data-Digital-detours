Table data;

void setup() {
  size(800, 600);
  println(dataPath("observations.csv"));

  data = loadTable("observations.csv", "header");

  println("Number of observations: " + data.getRowCount());
}

void draw() {
  background(255);
  fill(0);
  textSize(24);
  text("Digital Detours", 300, 30);
  textSize(14);

  fill(255, 0, 0);
  ellipse(90, 45, 12, 12);

  fill(0);
  text("Detour", 105, 50);

  fill(0, 180, 0);
  ellipse(200, 45, 12, 12);

  fill(0);
  text("No detour", 215, 50);

  for (int i = 0; i < data.getRowCount(); i++) {
    TableRow row = data.getRow(i);

    int minutes = row.getInt("minutes");
    String detour = row.getString("detour");

    float x = 80 + (i % 5) * 150;
    float y = 130 + (i / 5) * 100;
    float size = getCircleSize(minutes);
if (detour.equals("yes")) {
  fill(255, 0, 0);
} else {
  fill(0, 180, 0);
}

    ellipse(x, y, size, size);
  }
}
float getCircleSize(int minutes) {
  return minutes;
}
