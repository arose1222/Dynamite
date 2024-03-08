@isTest
private class ContactManagerTest {
    @isTest static void testGetContactsByValidAccountId() {
        // Set up test data
        Account testAccount = new Account(Name='Test Account');
        insert testAccount;

        Contact testContact = new Contact(FirstName='Test', LastName='Contact', Email='test@example.com', AccountId=testAccount.Id);
        insert testContact;

        // Test method with valid data
        Test.startTest();
        List<Contact> contacts = ContactManager.getContactsByAccountId(testAccount.Id);
        Test.stopTest();

        // Verify the results
        System.assertEquals(1, contacts.size(), 'There should be one contact related to the test account.');
        System.assertEquals(testContact.Id, contacts[0].Id, 'The contact Id should match the inserted test contact.');
    }

    @isTest static void testGetContactsByNullAccountId() {
        // Test method with null data
        Boolean caughtException = false;
        try {
            List<Contact> contacts = ContactManager.getContactsByAccountId(null);
        } catch (IllegalArgumentException e) {
            caughtException = true;
        }

        // Verify that an exception is thrown
        System.assert(caughtException, 'An IllegalArgumentException should be thrown when accountId is null.');
    }
}