import javax.swing.*;
import java.awt.*;
import java.awt.event.*;
import java.util.*;

public class GameItemTestGUI {

  public static void main(String[] args) {

    ArrayList<GameItem> bag = new ArrayList<GameItem>();

    bag.add(new Weapon("Sword", 3, true)); 
    bag.add(new Weapon("Rock", 1, false));
    bag.add(new Consumable("Potion", 0.5, "restore health"));
    bag.add(new Consumable("Food", 1.5, "sate hunger"));
    
    // ListIterator: see https://www.baeldung.com/java-iterate-list
    ListIterator<GameItem> bagIterator = bag.listIterator();     
    JLabel label = new JLabel(bagIterator.next().toString(), JLabel.CENTER);
    
    JButton buttonNext = new JButton("Next >");
    buttonNext.addActionListener(new ActionListener() {
      @Override
      public void actionPerformed(ActionEvent e) {
        if (bagIterator.hasNext()) {   
          label.setText(bagIterator.next().toString());
        }
      }
    });

    JPanel panel = new JPanel(new BorderLayout());
    panel.add(label, BorderLayout.CENTER);
    panel.add(buttonNext, BorderLayout.PAGE_END);


    JFrame f = new JFrame();
    f.add(panel);
    f.setSize(512, 512);
    f.setVisible(true);
  }
}






