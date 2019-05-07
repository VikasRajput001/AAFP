({
	doInit : function(cmp, event, helper) {
		helper.loadData(cmp, event, helper);
        var urlString = window.location.href;
        alert(urlString.substring(urlString.indexOf("retURL=")));
	}
})