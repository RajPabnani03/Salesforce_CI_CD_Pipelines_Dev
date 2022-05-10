trigger ContactTrigger on Contact (before insert) {
    
    List<Contact> conList = new List<Contact>();
    
    for(Contact con : Trigger.new){
        if(con.Email != NULL){
            conList.add(con);
        }
    }
    update conList;
}