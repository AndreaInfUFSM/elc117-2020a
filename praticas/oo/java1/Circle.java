public class Circle {
   private double x;
   private double y;
   private double r;
   
   public Circle() {
      x = y = r = 0.0;
      System.out.println("New");
   }
   public double area() {
      return Math.PI * r * r;
   }
   public static void main(String[] args) {
      Circle c = new Circle();
      System.out.println("Area do circulo: " + c.area());
   }
}
