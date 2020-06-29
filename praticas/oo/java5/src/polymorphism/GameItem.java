public class GameItem {
  private String name;
  private String image;
  private double weight;

  public GameItem(String name, double weight) {
    this(name, weight, "default.png");
  }
  public GameItem(String name, double weight, String image) {
    this.name = name;
    this.weight = weight;
    this.image = image;
  }
  public double getWeight() {
    return weight;
  }
  public String getName() {
    return name;
  }
  public void setImage(String image) {
    this.image = image;
  }
  public String getImage(String image) {
    return image;
  }
  public String toString() {
    return "Item: " + name + ", " + "Weight: " + weight ;
  }
}

