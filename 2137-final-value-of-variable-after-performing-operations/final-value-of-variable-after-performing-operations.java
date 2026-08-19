class Solution {
    public int finalValueAfterOperations(String[] operations) {
        int x=0;
        for(int i=0;i<operations.length;i++){
        // for(String operation : operations){
            String operation = operations[i];
            if(operation.charAt(1)=='+'){
                // if(operation.contains("+")){
                x++;    
                 }
            else{
                x--;
            }


        }
            
            return x;
    }
}