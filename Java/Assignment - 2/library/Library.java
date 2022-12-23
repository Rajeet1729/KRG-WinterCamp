public class Library {

    String bookName;
    boolean checkout;
    int rating;

    public Library(String name, boolean checkout, int rating) {
        this.name = name;
        this.checkout = checkout;
        this.rating = rating;
    }

    public Library(String name) {
        bookName = name;
    }

    public String getName() {
        return bookName;
    }

    public void doCheckout() {

        System.err.println("Book " + '"' + getName() + '"' + " checked out successfully.");

    }

    public void doReturn() {
        checkout = true;
        System.err.println("Book " + '"' + getName() + '"' + " returned successfully.");

    }

    public void receiveRating(int rating) {
        this.rating = rating;
    }

    public int getRating() {
        return rating;
    }

    public boolean getCheckout() {
        return checkout;
    }
}
