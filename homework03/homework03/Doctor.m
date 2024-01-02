//
//  Doctor.m
//  homework03
//
//  Created by Dmitry An on 02/01/2024.
//

#import "Doctor.h"

@implementation Doctor

- (void) administerThePill {
    NSLog(@"The doc is handling the receipt for the pill to %@", self.delegate.name);
    [self.delegate swallowThePill];
}
@end
