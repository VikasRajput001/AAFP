public class LoadTestData {

    public static void insertLocalChaptersDues(Integer startIndex, Integer endIndex){
        
        // Index combinations: 0, 49 - 50, 99 - 100,149 - 150,199
        
        List<String> localChapterDuesNames = new List<String>{
            'CA Alameda-Contra Costa','CA Amador','CA Butte-Glenn-Tehama','CA Colusa-Yuba-Sutter','CA Fresno-Madera-Kings Chapter','CA Humboldt-Del Norte',
            'CA Imperial','CA Inyo-Mono-Alpine','CA Kern','CA Lassen-Plumas-Modoc','CA Los Angeles','CA Mendocino-Lake','CA Merced-Mariposa','CA Monterey',
            'CA Napa','CA North Bay','CA Orange','CA Placer-Sierra-Nevada','CA Riverside-San Bernardino','CA Sacramento-El Dorado','CA San Diego',
            'CA San Francisco','CA San Joaquin-Calaveras-Tuolumne','CA San Luis Obispo','CA San Mateo','CA Santa Barbara','CA Santa Clara',
            'CA Santa Cruz','CA Shasta-Trinity','CA Siskiyou','CA Solano','CA Stanislaus','CA Tulare AFP','CA Ventura','CA Yolo AFP','KY 001','KY 002','KY 003',
            'KY 004','KY 005','KY 006','KY 007','KY 008','KY 009','KY 010','KY 011','KY 012','KY 013','KY 014','KY 015','MI Southeast Michigan','MN Central',
            'MN East Metro','MN Heart of the Lakes','MN Lake of the Woods','MN Lake Superior','MN Minnesota Valley','MN Park Region','MN Range','MN Southeast',
            'MN Southern','MN West Metro','MO Kansas City','MO St Louis','NJ Atlantic','NJ Bergen','NJ Burlington','NJ Camden','NJ Cape May','NJ Cumberland',
            'NJ Essex','NJ Gloucester','NJ Hudson','NJ Hunterdon','NJ Mercer','NJ Middlesex','NJ Monmouth','NJ Morris','NJ Ocean','NJ Passaic','NJ Salem',
            'NJ Somerset','NJ Sussex','NJ Union','NJ Warren','NY Adirondack','NY Albany','NY Allegheny','NY Bronx','NY Cattaraugus','NY Cayuga',
            'NY Central Mohawk Valley','NY Chautauqua','NY Chemung','NY Clinton','NY Columbia','NY Cortland','NY Delaware','NY Dutchess','NY Erie',
            'NY Fulton','NY Greene','NY Jefferson','NY Kings','NY Lewis','NY Livingston','NY Madison','NY Nassau','NY New York County','NY Niagara',
            'NY Oneida','NY Onondaga','NY Ontario','NY Orange','NY Orleans','NY Oswego','NY Otsego','NY Putnam','NY Queens','NY Rensselaer','NY Richmond',
            'NY Rochester','NY Rockland','NY Saratoga','NY Schenectady','NY Schoharie','NY Schuyler','NY Seneca','NY Southern Tier','NY St Lawrence',
            'NY Steuben','NY Suffolk','NY Sullivan','NY Tomkins','NY Ulster','NY Warren Washington','NY Wayne','NY Westchester','NY Wyoming','OH Central',
            'OH East Central','OH Miami Valley','OH Northeastern','OH Northwestern','OH Southeastern','OH Southwestern','TX Abilene','TX Alamo','TX Brazoria',
            'TX Brazos Valley','TX Central Texas','TX Colorado Valley','TX Dallas','TX East Texas','TX El Paso','TX Galveston','TX Gulf Coast','TX Harris County',
            'TX Henderson County','TX Midwest Texas','TX North Texas','TX Northeast Texas','TX Northwoods','TX Panhandle','TX Permian Basin','TX Red River',
            'TX Rose','TX Sam Houston','TX Seven Flags','TX South Plains','TX South Texas','TX Southeast','TX Southwest Texas','TX Tarrant County',
            'TX Three Rivers','TX Travis County','TX Valley','TX West Texas','VA Blue Ridge','VA Northern Virginia','VA Richmond','VA Tidewater','VA Virginia Beach',
            'WA Chelan-Douglas','WA Clallam-Jefferson','WA Columbia Basin  ','WA Grays Harbor-Pacific','WA Inland Northwest','WA King','WA Kitsap','WA Klickitat-Skamania',
            'WA Mount Baker','WA North Central','WA Pierce','WA Skagit-Island  ','WA Snohomish','WA South Central','WA Southeast','WA Southwest','WA Thurston-Mason-Lewis'
        };
            
        List<Double> localChapterDuesPrice = new List<Double> {
        	25.00,0.00,20.00,0.00,25.00,0.00,0.00,0.00,12.00,0.00,50.00,0.00,0.00,10.00,0.00,30.00,45.00,0.00,35.00,30.00,60.00,25.00,
            0.00,0.00,0.00,10.00,31.00,0.00,0.00,0.00,15.00,20.00,15.00,10.00,20.00,0.00,0.00,0.00,0.00,30.00,0.00,0.00,0.00,0.00,0.00,
            0.00,0.00,0.00,0.00,0.00,25.00,15.00,15.00,15.00,15.00,15.00,15.00,15.00,15.00,15.00,15.00,15.00,70.00,100.00,10.00,10.00,
            10.00,10.00,10.00,10.00,10.00,10.00,10.00,10.00,10.00,10.00,10.00,10.00,10.00,10.00,10.00,10.00,10.00,10.00,10.00,0.00,20.00,
            0.00,30.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,50.00,0.00,0.00,0.00,40.00,0.00,0.00,0.00,30.00,35.00,0.00,0.00,
            15.00,0.00,0.00,0.00,0.00,0.00,0.00,35.00,0.00,0.00,25.00,0.00,40.00,20.00,0.00,0.00,0.00,0.00,0.00,0.00,25.00,0.00,50.00,10.00,
            0.00,0.00,30.00,0.00,20.00,20.00,20.00,20.00,20.00,20.00,20.00,0.00,110.00,0.00,0.00,0.00,0.00,90.00,0.00,0.00,75.00,0.00,130.00,
            0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,125.00,10.00,0.00,90.00,0.00,0.00,0.00,25.00,0.00,
            0.00,0.00,40.00,0.00,0.00,25.00,75.00,0.00,0.00,0.00,0.00,30.00,0.00,25.00,25.00,0.00,0.00,15.00
        };
            
     	System.assertEquals(localChapterDuesNames.size(), localChapterDuesPrice.size());
        System.assertEquals(200, localChapterDuesNames.size());
        
        String itemClassName = 'Membership Local Dues';
        String businessGroupName = 'American Academy of Family Physicians';
        String subscriptionPlanName = 'Calendar Year 1/1-12/31(BiAnnualProration, monthly installment and auto-renewal)';
        
        OrderApi__Item_Class__c itemClass = [Select Id From OrderApi__Item_Class__c Where Name = :itemClassName Limit 1];
        OrderApi__Business_Group__c businessGroup = [Select Id From OrderApi__Business_Group__c Where Name = :businessGroupName Limit 1];
        OrderApi__Subscription_Plan__c subscriptionPlan = [Select Id From OrderApi__Subscription_Plan__c Where Name = :subscriptionPlanName AND OrderApi__Grace_Period__c = 60 Limit 1];
        
        System.assertNotEquals(Null, itemClass.Id);
        System.assertNotEquals(Null, businessGroup.Id);
        System.assertNotEquals(Null, subscriptionPlan.Id);
        
        List<OrderApi__Item__c> itemsToInsert = new List<OrderApi__Item__c>();
        
        for(Integer i=startIndex;i<endIndex;i++){
                        
            OrderApi__Item__c item = new OrderApi__Item__c(
                Name = 'Active Membership - ' + localChapterDuesNames[i] + ' - Local Chapter Dues',
                OrderApi__Item_Class__c = itemClass.Id,
                OrderApi__Price__c = localChapterDuesPrice[i],
                OrderApi__Business_Group__c = businessGroup.Id,
                OrderApi__Require_PreAuthorized_Payment__c = false,
                
                OrderApi__Image_Path__c = 'https://package-assets.s3.amazonaws.com/master/emerald/img/placeholders/item.png',
                OrderApi__Display_Name__c = localChapterDuesNames[i],
                OrderApi__Line_Description__c = 'Active Membership - Local Chapter Dues',
                OrderApi__Description__c = 'Local Chapter Dues'
            );
            
            itemsToInsert.add(item);
        }
        Insert itemsToInsert;
        
        List<OrderApi__Item_Subscription_Plan__c> itemSubscriptionPlans = new List<OrderApi__Item_Subscription_Plan__c>();
        
        for(OrderApi__Item__c item: itemsToInsert){
            OrderApi__Item_Subscription_Plan__c itemSubscriptionPlan = new OrderApi__Item_Subscription_Plan__c(
                OrderApi__Is_Default__c = true,
                OrderApi__Item__c = item.Id,
                OrderApi__Subscription_Plan__c = subscriptionPlan.Id
            );
            itemSubscriptionPlans.add(itemSubscriptionPlan);
        }
        Insert itemSubscriptionPlans;
        
        System.assertEquals(itemSubscriptionPlans.size(), itemsToInsert.size());
        
        for(OrderApi__Item__c item: itemsToInsert){
            item.OrderApi__Is_Active__c = true;
        }
        Update itemsToInsert;
    }
}