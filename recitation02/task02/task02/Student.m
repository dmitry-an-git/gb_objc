//
//  Student.m
//  task02
//
//  Created by Dmitry An on 24/12/2023.
//

#import "Student.h"

@implementation Student

- (id)initWithName:(nonnull NSString *)name surname:(nonnull NSString *)surname age:(NSInteger)age {
    self = [super init];
    if (self) {
        self.name = name;
        self.surname = surname;
        _age = age;
    }
    return self;
}

- (NSString*) fullName {
    return [[self.name stringByAppendingString:@" "] stringByAppendingString:self.surname];
}

- (void) getElder {
    _age += 1;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"%@ is %li years old", [self fullName], _age];
}

@end
