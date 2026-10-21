Table data;

void setup() {
  size(800, 600);
  println(dataPath("observations.csv"));

  data = loadTable("observations.csv", "header");

  println("Number of observations: " + data.getRowCount());
}

void draw() {
  background(255);

  for (int i = 0; i < data.getRowCount(); i++) {
    TableRow row = data.getRow(i);

    int minutes = row.getInt("minutes");
    String detour = row.getString("detour");

    float x = 80 + (i % 5) * 150;
    float y = 100 + (i / 5) * 180;
    float size = minutes;
if (detour.equals("yes")) {
  fill(255, 0, 0);
} else {
  fill(0, 180, 0);
}

    ellipse(x, y, size, size);
  }
}
