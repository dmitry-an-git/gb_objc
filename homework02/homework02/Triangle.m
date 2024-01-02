//
//  Triangle.m
//  homework02
//
//  Created by Dmitry An on 26/12/2023.
//

#import "Triangle.h"

@implementation Triangle

- (id) initWithSideA: (CGFloat) sideA SideB: (CGFloat) sideB SideC: (CGFloat) sideC {
    if ((sideA <= 0) || (sideB <= 0) || (sideC <= 0)) {
        NSLog(@"Sides can't have negative length");
        return nil;
    }
    if ((sideA + sideB < sideC) || (sideB + sideC < sideA) || (sideA + sideC < sideB)) {
        NSLog(@"Triangle with such sides does not exist");
        return nil;
    }
    self = [super init];
    if (self) {
        self.sideA = sideA;
        self.sideB = sideB;
        self.sideC = sideC;
        [self calculatePerimeter];
        [self calculateArea];
    }
    return self;
}

- (void)calculateArea {
    CGFloat halfP = (self.sideA + self.sideB + self.sideC) / 2;
    self.area = sqrt(halfP * (halfP - self.sideA) * (halfP - self.sideB) * (halfP - self.sideC));
}

- (void)calculatePerimeter {
    CGFloat p = self.sideA + self.sideB + self.sideC;
    self.perimeter = p;
}

- (NSString*) description {
    return [NSString stringWithFormat:@"Triangle with sides: %.1f, %.1f, %.1f, perimeter: %.1f and area: %.1f", self.sideA, self.sideB, self.sideC, self.perimeter, self.area];
}

@end
