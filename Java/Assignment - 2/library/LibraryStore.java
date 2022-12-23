public class LibraryStore {

    Library[] store;

    public LibraryStore() {
        store = new Library[5];
    }

    public void addLibrary(String name) {

        store[0] = new Library(name);
        System.err.println("Book " + '"' + store[0].getName() + '"' + " added successfully");
    }

    public void doCheckout(String name) {
        if (store[0].bookName.equals(name)) {
            store[0].doCheckout();
        }
    }

    public void doReturn(String name) {
        if (store[0].bookName.equals(name)) {
            store[0].doReturn();
        }
    }

    public void receiveRating(String name, int rating) {

        if (store[0].bookName.equals(name)) {
            store[0].receiveRating(rating);
        }
        System.err.println("Rating " + '"' + store[0].getRating() + '"' + " has been mapped to the Book ''"
                + store[0].getName() + '"');

    }

    public void listInventory() {
        System.out.println("------------------------------------------");
        System.out.println("Book Name | Checkout Status | Rating");
        System.out.println(store[0].getName() + "|" + store[0].getCheckout() + "|" + store[0].getRating());
        System.out.println("------------------------------------------");
    }
}
