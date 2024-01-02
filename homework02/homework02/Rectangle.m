//
//  Rectangle.m
//  homework02
//
//  Created by Dmitry An on 26/12/2023.
//

#import "Rectangle.h"

@implementation Rectangle

- (id)initWithSideA:(CGFloat)sideA sideB:(CGFloat)sideB {
    if ((sideA <= 0) || (sideB <= 0)) {
        NSLog(@"Sides should have positive length");
        return nil;
    }
    self = [super init];
    if (self) {
        _sideA = sideA;
        _sideB = sideB;
        [self calculateArea];
        [self calculatePerimeter];
    }
    return self;
}

- (void)calculateArea {
    self.area = self.sideA * self.sideB;
}

- (void)calculatePerimeter {
    self.perimeter = (self.sideA + self.sideB) * 2;
}

- (NSString*) description {
    return [NSString stringWithFormat:@"Rectangle with sides: %.1f, %.1f, perimeter: %.1f and area: %.1f", self.sideA, self.sideB, self.perimeter, self.area];
}
    


@end
