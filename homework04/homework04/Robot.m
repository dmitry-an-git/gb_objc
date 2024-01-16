//
//  Robot.m
//  homework04
//
//  Created by Dmitry An on 16/01/2024.
//

#import "Robot.h"

//typedef NSString *(^DirectionBlock)(void);

@implementation Robot

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.position = [Coordinates new];
    }
    return self;
}


- (void) run: (DirectionBlock)block {
    NSString * direction = block();
    if ([direction isEqualToString:@"up"]) {
        [self.position moveX:0 andY:1];
    } else if ([direction isEqualToString:@"down"]) {
        [self.position moveX:0 andY:-1];
    } else if ([direction isEqualToString:@"left"]) {
        [self.position moveX:-1 andY:0];
    } else if ([direction isEqualToString:@"right"]) {
        [self.position moveX:1 andY:0];
    }
}

- (void) printPosition {
    NSLog(@"%@",self.position);
}

@end
