import { LightningElement } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
import CONTACT_OBJECT from '@salesforce/schema/Contact';
import CONTACT_FIRSTNAME from '@salesforce/schema/Contact.FirstName';
import CONTACT_LASTNAME from '@salesforce/schema/Contact.LastName';
import CONTACT_EMAIL from '@salesforce/schema/Contact.Email';

export default class ContactCreator extends LightningElement {
    contactApiName = CONTACT_OBJECT;
    contactFields = [CONTACT_FIRSTNAME, CONTACT_LASTNAME, CONTACT_EMAIL];

    handleSuccess(event){
        let showSuccess = new ShowToastEvent({
            title: "Contact created!",
            message: "Contact Id "+event.detail.id,
            variant: "Success"
        });
        this.dispatchEvent(showSuccess);
    }
}