class User {
  private String name;
  private int id;

  private static int count = 0;

  public User() {
    this("randomname");
  }
  public User(String name) {
    id = count;
    count++;
    this.name = name;
  }
  public String getName() {
    return name;
  }
  public static int getCount() {
    return count;
  }
  public static void main(String[] args) {
    User u1 = new User();
    User u2 = new User("myuser");
    System.out.println(u1.getName());
    System.out.println(u2.getName());
  }
}
