import { LightningElement, wire } from 'lwc';
import FIRST_NAME from '@salesforce/schema/Contact.FirstName';
import LAST_NAME from '@salesforce/schema/Contact.LastName';
import Email from '@salesforce/schema/Contact.Email';
import getContacts from '@salesforce/apex/ContactController.getContacts';
import { reduceErrors } from 'c/ldsUtils';




const COLOUMS = [
    { label: 'First Name', fieldName: FIRST_NAME.fieldApiName, type: 'text' },
    { label: 'Last Name', fieldName: LAST_NAME.fieldApiName, type: 'text' },
    { label: 'Email', fieldName: Email.fieldApiName, type: 'email' },
];
export default class ContactList extends LightningElement {
    coloums = COLOUMS;
  
    contacts;
    error;
    @wire (getContacts) 
    WiredContacts({error,data}){
        if(data){
            this.contacts = data;
            this.error = undefined;
          //  console.log("Contacts" , this.contacts);
        }else if(error){
            this.error = error;
            this.contacts  = undefined;
           // console.log(" error:::" , this.error);
        }
        
    }


    get errors() {
        return (this.contacts.error) ?
            reduceErrors(this.contacts.error) : [];
    }
    
}