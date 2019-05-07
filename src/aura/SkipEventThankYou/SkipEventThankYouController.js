({
    doInit : function(component, event, helper) {
       
	},
    
    handleSwitchComponent : function(component, event, helper) {
        setTimeout($A.getCallback(function(){
          helper.OverrideEventThankyouSwitchJS(component, event);  
        }),500);
        
	}
})