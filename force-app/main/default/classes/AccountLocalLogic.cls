public class AccountLocalLogic {
    public static void TotalRevenueHandler(Set<id> accountIds){
        // This is a sample line of code -  nothing works here...
        List<Contact> conList= [Select AccountId FROM Contact Where AccountId IN : accountIds];
        //List<AggregateResult> accountToUpdate = [Select AccountId, COUNT(Id) totalContacts FROM Contact
        //                                Where AccountId IN : accountIds GROUP BY AccountId];
        
        Map<id, Decimal> Mapofcontact = New Map<id, Decimal>();
        
        /*for(AggregateResult conrec : conList){
            Mapofcontact.put((id) conrec.get('AccountId'), (Decimal) conrec.get('totalrev'));
        }*/
        
        List<Account> AccountToUpdate = New List<Account>();
        for(Id accrec: accountIds){
            Account acc = new Account();
            acc.id = accrec;
            acc.AnnualRevenue = Mapofcontact.get(accrec);
            AccountToUpdate.add(acc);
        }
        
        if(AccountToUpdate.size()> 0){
            update AccountToUpdate;
        }
        
    }
}