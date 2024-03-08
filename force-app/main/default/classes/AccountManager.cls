public class AccountManager {
    /**
     * Creates a new Account with a predefined name and returns the Account ID.
     */
    public static Id createAccount() {
        // Initialize a new Account instance
        Account acc = new Account(Name='Sample Account for Copado PoC');
        
        // Insert the Account into the database
        insert acc;
        
        // Return the ID of the newly created Account
        return acc.Id;
    }
}