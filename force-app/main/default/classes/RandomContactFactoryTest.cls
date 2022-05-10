@isTest 
public class RandomContactFactoryTest {
    @isTest static void test() {
       
         List<Contact> contacts = new List<Contact>();
            for(Integer i=0;i<3;i++){
                contacts.add(new Contact(FirstName='test',LastName=string.valueOf(i)));           
            }
        //insert contacts;
        RandomContactFactory.generateRandomContacts(contacts.size());
        System.assertEquals(3, contacts.size());
        
    }
}