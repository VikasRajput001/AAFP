public class SkipEventThankYouCtrl {
     /**********
     * Name         :   SkipEventThankYouCtrl
     * Description  :   This Method will override current thank you page
     *                  
     * 
     * Return       :   This method will return
     *                  
     */
    @AuraEnabled
    public static List<EventApi__Ticket_Type__c> OverrideEventThankyouOnLoad(String reqObj) {
        //NOT USING THIS METHOD but can be called from Onload
        SkipEventThankYouCtrl.requestParam req = (SkipEventThankYouCtrl.requestParam) Json.deserialize(reqObj, SkipEventThankYouCtrl.requestParam.class);
        //system.debug('\n--req--'+req);
        //want soid too
        if(req.eventId == null) {
            return null;
        }
        if(req.soId == null) {
            return null;
        }
        EventApi__Event__c ev = new EventApi__Event__c();
        if (req.eventId != null) {
            ev = (EventApi__Event__c) new Framework.Selector(EventApi__Event__c.SOBjectType).selectById(req.eventId);
        }
        System.debug('Event : '+ ev);
        
       List<EventApi__Ticket_Type__c> ticketTypes;// = (Database.query(soqlQuery));           
       
       return ticketTypes;
    }
  
    
    /**** 
     * Wrapper class for the Reuest Parameters
     */
    public class requestParam{
        @AuraEnabled public string eventId {get;set;}
        @AuraEnabled public string soId {get;set;}
    }

}