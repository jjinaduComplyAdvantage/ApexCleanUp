// public with sharing class SlackOpportunityPublisherv3 {

     
//    // Production business channel
// private static final String slackURL = 'https://hooks.slack.com/services/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'; 

//     public class Oppty {
    
    
//         @InvocableVariable(label='Opportunity Owner')
//         public String opptyOwnerName;
//         @InvocableVariable(label='Product')
//         public String opptyProduct;
//         @InvocableVariable(label='Opportunity Name')
//         public String opptyName;
//         @InvocableVariable(label='Industry')
//         public String acctIndustry;
//         @InvocableVariable(label='Type')
//         public String opptyType;
//         @InvocableVariable(label='Amount')
//         public Decimal opptyamount;
//         @InvocableVariable(label='id')
//         public String opptyID;

     
//     }  
     
//     @InvocableMethod(label='Post to SlackV7')
//     public static void postToSlack(List<Oppty> oppties) {   
//         Oppty o = oppties[0]; // If bulk, only post first to avoid overloading Slack channel
//   		Map<String,Object> msg = new Map<String,Object>();
//         // Setting the message contents
//         msg.put('text', ' Opportunity was closed-won by: ' + o.opptyOwnerName + '\n' + ' Opportunity name:*' + o.opptyName + '*\n' + ' Industry:* ' + o.acctIndustry + '*\n' + ' Amount:* ' + o.opptyamount + '*\n' + ' Product:* ' + o.opptyProduct + '*\n' + ' Type:* ' + o.opptyType + '*\n' + ' https://eu11.lightning.force.com/lightning/r/Opportunity/'+o.opptyID);
//         msg.put('mrkdwn', true);
//         String body = JSON.serialize(msg);    
//         System.enqueueJob(new QueueableSlackCall(slackURL, 'POST', body));
//     }
     
//     public class QueueableSlackCall implements System.Queueable, Database.AllowsCallouts {
         
//         private final String url;
//         private final String method;
//         private final String body;
         
//         public QueueableSlackCall(String url, String method, String body) {
//             this.url = url;
//             this.method = method;
//             this.body = body;
//         }
         
//         public void execute(System.QueueableContext ctx) {
//             HttpRequest req = new HttpRequest();
//             req.setEndpoint(url);
//             req.setMethod(method);
//             req.setBody(body);
//             Http http = new Http();
//             if (!Test.isRunningTest()) { // HTTP callout is not allowed in tests apparently...
//             HttpResponse res = http.send(req);
//                 }
 
//         }
//     }
// }