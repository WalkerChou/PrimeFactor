public class PrimeFactor{

     public static void main(String []args){
        getPrimeFactor(3);
        getPrimeFactor(6);
        getPrimeFactor(16);
        getPrimeFactor(26);
        getPrimeFactor(36);
        getPrimeFactor(1207);
     }
     
     public static void getPrimeFactor(int num) {
         String result = nextFactor(2, num);
         System.out.printf("%d = %s\n", num, (result.equals(String.valueOf(num)) ? "1x ": "") + result);
     }
     
     public static String nextFactor(int a, int num) {
         if (num == a) { return String.valueOf(a); }
         if (num % a == 0) {
             return String.valueOf(a) + " x " + nextFactor(a, num/a);
         } else {
             return nextFactor(a+1, num);
         }
     }
}

