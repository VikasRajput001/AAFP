({
    OverrideEventThankyouSwitchJS : function(component, event) {
		//console.log("***OverrideEventThankyouSwitchJS Helper");
        var componentName = event.getParam('componentName');
        var componentParams = event.getParam('componentParams');
       
        	if ((componentParams.salesOrderObj != null || componentParams.salesOrder != null) && componentParams.identifier === 'EventRegistrationWrapper' && componentName.indexOf('EventPaymentReceipt') > -1) {    
                var compEvent = $A.get('e.Framework:ShowComponentEvent');
                    compEvent.setParams({
                        componentName: 'markup://c:CustomEventThankYou',
                        componentParams: {
                            salesOrder: componentParams.salesOrder,
                            identifier: 'EventRegistrationWrapper'
                        }

                    });
                    compEvent.fire();
                
                event.stopPropagation();
               
            }
               
    }
  
    
    
})