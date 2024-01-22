//
//  Coordinates.m
//  homework04
//
//  Created by Dmitry An on 16/01/2024.
//

#import "Coordinates.h"

@implementation Coordinates

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.x = 0;
        self.y = 0;
    }
    return self;
}

- (void) moveX:(float)deltaX andY:(float)deltaY {
    self.x += deltaX;
    self.y += deltaY;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"Coordinates: x = %.1f, y = %.1f", self.x, self.y];
}


@end
