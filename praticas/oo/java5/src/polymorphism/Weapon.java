public class Weapon extends GameItem {
  private boolean sharpDamage;
  private int numAttacks;
  public Weapon(String name, double weight, boolean sharpDamage) {
    super(name, weight);
    this.sharpDamage = sharpDamage;
    numAttacks = 0;
  }
  public String toString() {
    return super.toString() + ", " + "Sharp Damage: " + sharpDamage;
  }
}

