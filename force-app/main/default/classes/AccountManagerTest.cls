@isTest
private class AccountManagerTest {
    /**
     * Test method for Account creation.
     */
    @isTest static void testCreateAccount() {
        // Call the method under test
        Id accountId = AccountManager.createAccount();
        
        // Retrieve the newly created Account from the database
        Account result = [SELECT Id, Name FROM Account WHERE Id = :accountId];
        
        // Assert that the Account was successfully created with the correct Name
        System.assertEquals('Sample Account for Copado PoC', result.Name, 'The Account name does not match the expected value.');
    }
}