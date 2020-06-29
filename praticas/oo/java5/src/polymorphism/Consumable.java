public class Consumable extends GameItem {
  private String useTo;
  private boolean consumed;
  public Consumable(String name, double weight, String useTo) {
    super(name, weight);
    this.useTo = useTo;
    this.consumed = false;
  }
  public void consume() {
    consumed = true;
  }
  public boolean isConsumed() {
    return consumed;
  }
}

