//
//  main.m
//  task02
//
//  Created by Dmitry An on 19/12/2023.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
//        Создать программу, которая находит большее число среди 3-х чисел.
//        assuming we are looking for the max value, not which varible/variables has/have the max value
        
        int a, b, c;
        NSLog(@"Enter the first number: ");
        scanf("%d", &a);
        NSLog(@"Enter the second number: ");
        scanf("%d", &b);
        NSLog(@"Enter the third number: ");
        scanf("%d", &c);
        
        int max;
        
        if (a > b) {
            max = a;
        } else {
            max = b;
        }
        
        if (c > max) {
            max = c;
        }
        
        NSLog(@"%i is the max", max);
    
    }
    return 0;
}
