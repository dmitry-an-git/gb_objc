//
//  Circle.m
//  homework02
//
//  Created by Dmitry An on 26/12/2023.
//

#import "Circle.h"

@implementation Circle

- (id)initWithRadius:(CGFloat)radius {
    
    if (radius <= 0) {
        NSLog(@"Radius should have positive length");
        return nil;
    }
    
    self = [super init];
    if (self) {
        _radius = radius;
        [self calculatePerimeter];
        [self calculateArea];
    }
    return self;
}
    
    
- (void)calculateArea {
    self.area = self.radius * self.radius * M_PI;
}

- (void)calculatePerimeter {
    self.perimeter = self.radius * 2 * M_PI;
}

- (NSString*) description {
    return [NSString stringWithFormat:@"Circle with radius: %.1f, perimeter: %.1f and area: %.1f", self.radius, self.perimeter, self.area];
}
    


@end
