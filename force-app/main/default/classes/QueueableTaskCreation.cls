public class QueueableTaskCreation {
    
    
    private String RecId;
    
    public QueueableTaskCreation(String RecId)
    {
        this.RecId = RecId;
    }
    
    public void execute(QueueableContext context)
    {
        Task tsk = new Task();
        tsk.WhatId = RecId;
        tsk.Subject = 'Created By Queueable Method';
        insert tsk;
    }
}