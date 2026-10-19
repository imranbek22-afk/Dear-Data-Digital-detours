Table data;

void setup() {
  size(800, 600);

  data = loadTable("observations.csv", "header");

  println("Number of observations: " + data.getRowCount());
}

void draw() {
  background(255);

  for (int i = 0; i < data.getRowCount(); i++) {
    TableRow row = data.getRow(i);

    int minutes = row.getInt("minutes");
String detour = row.getString("detour");

    float x = 50 + (i * 75);
    float size = minutes;

    ellipse(x, 300, size, size);
  }
}
