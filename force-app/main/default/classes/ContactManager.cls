public class ContactManager {
    /**
     * Retrieves a list of Contacts for a given Account Id.
     * 
     * @param accountId The Id of the Account to fetch Contacts for.
     * @return List<Contact> A list of Contacts associated with the Account.
     */
    public static List<Contact> getContactsByAccountId(Id accountId) {
        if (accountId == null) {
            throw new IllegalArgumentException('AccountId cannot be null');
        }
        return [SELECT Id, FirstName, LastName, Email, AccountId FROM Contact WHERE AccountId = :accountId];
    }
}