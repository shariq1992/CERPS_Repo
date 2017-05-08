trigger SendEmailToAccount on Contact (after insert) {
    if(Trigger.isAfter){
        if(Trigger.isInsert ){ 
            //helper class for single email but bulk messages
            HelperContactTrigger.sendEmail(trigger.new);
        }
    }
}