//
//  Trainee.m
//  task01
//
//  Created by Dmitry An on 24/12/2023.
//

#import "Trainee.h"

@implementation Trainee
- (void) checkMoney {
    NSInteger co = 2;
    NSLog(@"The salary is %li", (co * [self getStartNumberOfPhoto]));
}

- (void) dealloc {
    NSLog(@"Trainee dealloc");
}
@end
