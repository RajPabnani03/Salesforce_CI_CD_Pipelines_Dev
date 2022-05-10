public class ListDemo {
    public void listMethod() {
        List<String> strList = new List<String>();
        Set<String> setewstring = new set<String>();
        List<String> strList2 = new List<String>();
        sObject sobj = [SELECT Id,Name From Account Limit 1];
        
        boolean result;
        
        strList.add('India');
        strList.add('USA');
        strList.add('UK');
        
        strList.add(1,'Russia');
        
        strList2.add('Austrila');
        strList2.add('Canada');
        
        result = strList.contains('USA');
        
        boolean ValuePresent = strList.equals(strList2);
        
        System.debug('Cotains Value => ' + ValuePresent);
        
        //System.debug(result);
        
        strList.addAll(strList2);
        
        
        //System.debug('strList => ' + strList);
        //System.debug('strList2 => ' + strList2);
    }
}