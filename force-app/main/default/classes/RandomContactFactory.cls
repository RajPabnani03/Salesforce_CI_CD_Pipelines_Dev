public class RandomContactFactory {     
        public static List<Contact> generateRandomContacts(Integer count){
            List<Contact> contacts = new List<Contact>();
            
            for(Integer i=1;i<=count;i++){
                contacts.add(new Contact(FirstName='Test',LastName=string.valueOf(i)));           
            }
            System.debug('return Value => ' + contacts);
            return contacts;
        }
    }