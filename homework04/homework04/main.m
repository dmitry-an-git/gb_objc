//
//  main.m
//  homework04
//
//  Created by Dmitry An on 16/01/2024.
//

#import <Foundation/Foundation.h>
#import "Robot.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Robot * robot = [Robot new];
       
        DirectionBlock blockUp = ^NSString*(void) {
            return @"up";
        };
        DirectionBlock blockDown = ^NSString*(void) {
            return @"down";
        };
        DirectionBlock blockLeft = ^NSString*(void) {
            return @"left";
        };
        DirectionBlock blockRight = ^NSString*(void) {
            return @"right";
        };
        
        [robot printPosition];
        [robot run:blockUp];
        [robot printPosition];
        [robot run:blockRight];
        [robot printPosition];
        [robot run:blockDown];
        [robot printPosition];
        [robot run:blockLeft];
        [robot printPosition];
    }
    return 0;
}
