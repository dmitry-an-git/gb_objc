//
//  Patient.m
//  homework03
//
//  Created by Dmitry An on 02/01/2024.
//

#import "Patient.h"

@implementation Patient


- (id) init {
    self = [super init];
    if (self) {
        self.isSick = true;
    }
    return self;
}

- (id) initWithName: (NSString*) name {
    self = [super init];
    if (self) {
        self.isSick = true;
        self.name = name;
    }
    return self;
}

- (void) swallowThePill {
    NSLog(@"%@ has swallowed the pill.", self.name);
    self.isSick = false;
}

- (void) tellIfSick {
    if (self.isSick) {
        NSLog(@"Patient %@ is sick.", self.name);
    } else {
        NSLog(@"Patient %@ is healty.", self.name);
    }
}

@end
