//
//  Person.m
//  task01
//
//  Created by Dmitry An on 02/01/2024.
//

#import "Person.h"

@implementation Person

- (void) dealloc {
    NSLog(@"%@ human released", self.name);
}

@end
