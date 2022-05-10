public class Calculatorcontroller {
    
    public decimal firstNum{get;set;}
    public decimal secondNum{get;set;}
    public decimal result{get;set;}
    
    public void sum() {
        result = firstNum + secondNum;
    }
    
    public void sub() {
        result = firstNum - secondNum;
    }
    
    public void mult() {
        result = firstNum * secondNum;
    }
    public void div() {
        result = firstNum / secondNum;
    }
    
}