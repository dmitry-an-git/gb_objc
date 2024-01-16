//
//  main.m
//  recitation04
//
//  Created by Dmitry An on 16/01/2024.
//

#import <Foundation/Foundation.h>
#import "BlockClass.h"

typedef int (^TwoNumbersBlock) (int, int);
// create own type definition to make life easier

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        void (^mySumBlock)(int,int) = ^void(int a, int b) {
            NSLog(@"%d", a+b);
        };
        
        mySumBlock(5, 10);
        
        BlockClass * blockClass = [[BlockClass alloc] init];
        blockClass.blockProperty = ^int(int a, int b) {
            return a + b;
        };
        
        NSLog(@"%d", blockClass.blockProperty(5,15));
        
        [blockClass printInt:3 b:4 block:mySumBlock];
        
        TwoNumbersBlock twoNumbersBlock = ^int (int a, int b) {
            return a-b;
        };
        
        NSLog(@"%d", twoNumbersBlock(10,5));
        
        
    }
    return 0;
}
