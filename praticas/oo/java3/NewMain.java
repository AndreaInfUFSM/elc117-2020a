import javax.swing.*;
import java.awt.event.*;
import java.util.ArrayList;

public class NewMain {
  public static void main(String[] args) {
    ArrayList<User> userlist = new ArrayList<User>();

    // creating instance of JFrame
    JFrame f = new JFrame();

    // creating instance of JButton
    JButton b = new JButton("Add");

    // x axis, y axis, width, height
    b.setBounds(80, 100, 250, 40);


    JTextField t = new JTextField();
    t.setBounds(80, 60, 250, 40);

    // add event listener
    b.addActionListener(new ActionListener() {
      @Override
      public void actionPerformed(ActionEvent e) {
        userlist.add(new User(t.getText()));
	System.out.println("Mais um user: " + User.getCount());
      }
    });


    f.add(t);
    // add button to JFrame
    f.add(b);
    
    f.setSize(400, 500);
    f.setLayout(null);
    // make the frame visible
    f.setVisible(true);
  }
}
