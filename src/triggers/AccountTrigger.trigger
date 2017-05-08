trigger AccountTrigger on Account (after insert, after update) {
    List<Contact> con = new List<Contact>();
    for (Account acc : trigger.new) {
        Contact c = new Contact(AccountId = acc.id,
                                LastName = acc.name,
                                Phone = acc.Phone,
                                MailingStreet = acc.BillingStreet,
                                MailingCity = acc.BillingCity,
                                MailingState = acc.BillingState,
                                MailingPostalCode = acc.BillingPostalCode,
                                MailingCountry = acc.BillingCountry
                               );
        con.add(c);
    }
    insert con; 
}