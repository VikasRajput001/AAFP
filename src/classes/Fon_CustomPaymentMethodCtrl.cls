public without sharing class Fon_CustomPaymentMethodCtrl{

    @AuraEnabled
    public static String getContactInfo() {
        
        try {
            user u = [SELECT ContactId,Id FROM User where id = : userinfo.getuserid()];
            if(u !=null){
                return u.contactid;
            }
        }
        catch (Exception e) {
            throw new AuraHandledException(e.getMessage()+e.getStackTraceString());
        }
        return null; 
    }
    
    @AuraEnabled
    public static String getTokenInfo() {
        
        try {
            OrderApi__Payment_Gateway__c pg = [SELECT Id, OrderApi__Token__c FROM OrderApi__Payment_Gateway__c WHERE Name = 'Test' limit 1];
            if(pg !=null){
                return pg.OrderApi__Token__c ;
            }
        }
        catch (Exception e) {
            throw new AuraHandledException(e.getMessage()+e.getStackTraceString());
        }
        return null; 
    }
}