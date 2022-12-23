/*
 * Create Java classes having suitable attributes for Library management system.
 * Use OOPs concepts in your design.Also try to use interfaces and abstract classes.
 */
import java.util.*;

public class Main {
    public static void main(String[] args) {

        Main obj = new Welcome();

        Scanner input = new Scanner(System.in);
        int choice = 1;

        LibraryStore LibraryStore = new LibraryStore();
        do {
            System.out.println("MAIN MENU \n=========");
            System.out.println("1. Add Book:");
            System.out.println("2. Check Out book:");
            System.out.println("3. Return Book:");
            System.out.println("4. Receive Rating:");
            System.out.println("5. List Library Books:");
            System.out.println("6. Exit:");
            System.out.print("Enter your choice(1 to 6): ");

            choice = input.nextInt();

            switch (choice) {
                case 1:
                    System.out.println("Enter the name of the Book you want to add: ");
                    LibraryStore.addLibrary(input.next());
                    break;
                case 2:
                    System.out.print("Enter the name of the Book you want to check out: ");
                    LibraryStore.doCheckout(input.next());
                    break;
                case 3:
                    System.out.print("Enter the name of the Book you want to Return:");
                    LibraryStore.doReturn(input.next());
                    ;
                    break;
                case 4:
                    System.out.println("Enter the name of the Book you want to Rate: ");
                    LibraryStore.receiveRating(input.next(), input.nextInt());
                    break;
                case 5:
                    LibraryStore.listInventory();
                    break;
                case 6:
                    System.err.println("Enter ...!! Thanks for using the application");
                    System.exit(1);
                    break;
            }
        } while (!(choice == 6));
        input.close();
    }
}

class Welcome extends Main{
    Welcome(){
        System.out.println("Welcome to Library Management System");
    }
};