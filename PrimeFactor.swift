import Foundation 

func nextFactor(a: Int, num: Int) -> String {
    if (num == a) { return String(a) };
    if (num % a == 0) {
        return String(a) + " x " + nextFactor(a:a, num:num / a);
    } else {
        return nextFactor(a:a+1, num:num)
    }
}

func getPrimeFactor(num: Int) -> Void {
    var result = nextFactor(a:2, num:num);
    print (String(num) + " = " + (result == String(num) ? "1 x " : "") + result);
}

getPrimeFactor(num:3);
getPrimeFactor(num:6);
getPrimeFactor(num:16);
getPrimeFactor(num:26);
getPrimeFactor(num:36);
