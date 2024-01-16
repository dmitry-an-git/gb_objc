//
//  main.m
//  task01
//
//  Created by Dmitry An on 02/01/2024.
//

#import <Foundation/Foundation.h>
#import "Passport.h"
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Passport * passport = [[Passport alloc] init];
        Person * person = [[Person alloc] init];
        person.name = @"vasya";
        person.passport = passport;
        passport.number = @"12345";
        passport.person = person;
//        passport.person = nil;
        NSLog(@"mission completed");
    }
    return 0;
}
