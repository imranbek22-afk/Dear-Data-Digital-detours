Table data;

void setup() {
  size(800, 600);

  data = loadTable("observations.csv", "header");

  println("Number of observations: " + data.getRowCount());
}

void draw() {
  background(255);
}
