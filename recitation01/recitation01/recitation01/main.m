//
//  main.m
//  recitation01
//
//  Created by Dmitry An on 19/12/2023.
//

#import <Foundation/Foundation.h>


bool isBelongsToAlphabet(NSString *character) {
    int position = [character characterAtIndex:0];
    return position >= 65 && position <= 122;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        int a = 2;
//        int squareA = a * a;
//        NSLog(@"%i", squareA);
        a *= a;
        NSLog(@"%i", a);
        
        int b = 8, c = 16;
        NSLog(@"A равно %i, B равно %i, C равно %i", a, b, c);
        
        //%c, %f, %d - c-language
        
//        int d, e, f;
//        scanf("%d", &d); // this means we send a link to the memory space where the value of d is stored
//        scanf("%d", &e); // c has no strings, but has arrays of chars
//        scanf("%d", &f);
//        NSLog(@"D равно %i, E равно %i, F равно %i", d, e, f);
//        
//        int h, i;
//        scanf("%d", &h);
//        scanf("%d", &i);
//        NSLog(@"%i + %i = %i", h, i, h + i);
//        NSLog(@"%i - %i = %i", h, i, h - i);
//        NSLog(@"%i * %i = %i", h, i, h * i);
//        NSLog(@"%i / %i = %f", h, i, (double)h / (double)i);
//        NSLog(@"%i % %i = %i", h, i, h % i);
//        NSLog(@"mean(%i, %i) = %i", h, i, (h + i)/2);
        
        // you can convert %b to %B (YES/NO) or %d (1/0)
//        NSLog(@"%b", isBelongsToAlphabet(@"d"));
        
        char arrayChar[100];
        scanf("%s", arrayChar); // no & as array is a pointer to start of the array itself
        NSString *string = [NSString stringWithCString:arrayChar encoding:NSUTF8StringEncoding];
//        for (int i = 0; i < string.length; i++) {
//            NSLog(@"%c", [string characterAtIndex:i]);
//        }
        
        int i = 0;
        while (i < string.length) {
            NSLog(@"%c", [string characterAtIndex:i]);
            i++;
        };
        
        
 
    }
    return 0;
}


