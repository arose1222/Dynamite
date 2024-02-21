public class AccountAutomations {

    // Ensures that the account's description is not null by setting a default if needed
    public static Account setDefaultDescription(Account account) {
        if (account.Description == null) {
            account.Description = 'Default description';
        }
        return account;
    }

    // Sets the account's site to a default value
    public static Account setDefaultSite(Account account) {
        account.Site = 'Single location'; 
        return account;
    }

    // Sets default values for the account's shipping address
    public static Account setDefaultShippingAddress(Account account) {
        account.ShippingStreet = '111 W Illinois St'; 
        account.ShippingState = 'IL'; // State code for Illinois
        account.ShippingPostalCode = '60654';
        return account;
    }

    // Sets a default phone number for the account
    public static Account setDefaultPhone(Account account) {
        account.Phone = '9999999';
        return account;
    }
    public static Account setDefaultURL(Account a) {
        a.website = 'www.copado.com'; 
        return a;
        //Dependencies Examples123
//Quick Update123456
    }
}