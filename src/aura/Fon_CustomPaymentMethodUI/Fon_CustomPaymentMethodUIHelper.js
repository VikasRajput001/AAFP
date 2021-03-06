({
    loadData: function(cmp, event, helper) {
        
        var action = cmp.get('c.getContactInfo');
        action.setCallback(this, $A.getCallback(function (response) {
                var state = response.getState();
                if (state === "SUCCESS") {
                    cmp.set('v.ContactId', response.getReturnValue());
                    helper.loadToken(cmp, event, helper);
                } else if (state === "ERROR") {
                    var errors = response.getError();
                    console.error(errors);
                }
        }));
        $A.enqueueAction(action); 
    },
    loadToken: function(cmp, event, helper) {
        var action = cmp.get('c.getTokenInfo');
        action.setCallback(this, $A.getCallback(function (response) {
                var state = response.getState();
                if (state === "SUCCESS") {
                    cmp.set('v.Token', response.getReturnValue());
                    helper.recallDataService(cmp, event, helper);
                } else if (state === "ERROR") {
                    var errors = response.getError();
                    console.error(errors);
                }
        }));
        $A.enqueueAction(action); 
    },
    recallDataService: function(cmp, event, helper) {
        alert(cmp.get("v.Token"));  
        var div = cmp.find('custompaymentmethod');
        return $A.createComponent(
            'markup://OrderApi:PaymentMethods',
            {
                recordId: cmp.get("v.ContactId"),
                isThemed: false,
                isPortal: false,
                singleGatewayToUse: cmp.get("v.Token"),
                hideHeader: true
            }, function(newCmp, success, message) {
                if (success !== 'SUCCESS') {
                    return;
                }
                div.set('v.body', [newCmp]);
            }
        );
    }
})