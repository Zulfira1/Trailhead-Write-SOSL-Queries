public class ContactAndLeadSearch {
    public static List<List< sObject>> searchContactsAndLeads (string LastNameCntcLead){
        string searchWord = 'Smith';
        List<list<sObject>> searchList = [FIND :searchWord IN ALL FIELDS 
                                         RETURNING Contact(FirstName, LastName), 
                                         Lead(LastName, FirstName)];
        Contact[] searchCntc = (Contact[]) searchList[0];
        Lead[] searchLead = (Lead[]) searchList[1];
        System.debug('Found the following contact.');
        for(Contact a:searchCntc){
            System.debug(a.LastName + ', ' + a.FirstName);
        }
        System.Debug('Found the following lead.');
        for(Lead b:searchLead){
            System.debug(b.LastName + ', ' + b.FirstName);
        }
        return searchList;
    }

}