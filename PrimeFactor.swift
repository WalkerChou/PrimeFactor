import Foundation 

func Prime(a: Int, num: Int) -> String {
    if (num == a) { return String(a) };
    if (num % a == 0) {
        return String(a) + " x " + Prime(a:a, num:num / a);
    } else {
        return Prime(a:a+1, num:num)
    }
}

func getPrime(num: Int) -> Void {
    var result = Prime(a:2, num:num);
    print (String(num) + " = " + (result == String(num) ? "1 x " : "") + result);
}

getPrime(num:3);
getPrime(num:6);
getPrime(num:16);
getPrime(num:26);
getPrime(num:36);
getPrime(num:1207);
