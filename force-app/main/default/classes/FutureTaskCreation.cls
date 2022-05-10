public class FutureTaskCreation {
	
    
    @future(callout = true)
    public static void CreateTask(String RecId)
    {
        Task tsk = new Task();
        tsk.Subject = 'New Id is Created';
        tsk.WhatId = RecId;
        insert tsk;
    }
}