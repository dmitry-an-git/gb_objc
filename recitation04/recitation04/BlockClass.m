//
//  BlockClass.m
//  recitation04
//
//  Created by Dmitry An on 16/01/2024.
//

#import "BlockClass.h"

@implementation BlockClass

- (void) printInt: (int)a
                b: (int)b
            block: (void (^)(int, int))block 
{
        block(a, b);
}

@end
