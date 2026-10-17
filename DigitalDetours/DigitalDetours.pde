Table data;

void setup() {
  size(800, 600);

  data = loadTable("observations.csv", "header");

  println("Number of observations: " + data.getRowCount());
}

void draw() {
  background(255);

  for (int i = 0; i < data.getRowCount(); i++) {
    float x = 100 + (i * 120);
    ellipse(x, 300, 60, 60);
  }
}
