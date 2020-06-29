import javax.swing.*;
import java.awt.*;
import java.awt.event.*;


public class HelloImageSwing {

  public static void main(String[] args) {

    ImageIcon image = new ImageIcon("hello.png"); // be sure image is accessible
    JLabel label = new JLabel("", image, JLabel.CENTER);
    
    JPanel panel = new JPanel(new BorderLayout());
    panel.add(label, BorderLayout.CENTER);

    JFrame f = new JFrame();
    f.add(panel);
    //f.setSize(image.getIconWidth(), image.getIconHeight()); // window borders over image
    f.setSize(512, 512);
    f.setVisible(true);
  }
}

