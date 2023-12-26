//
//  main.m
//  task01
//
//  Created by Dmitry An on 24/12/2023.
//

#import <Foundation/Foundation.h>
#import "Photographer.h"
#import "Trainee.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Photographer* vasya = [[Photographer alloc] initWithCamera:NIKON andNumberOfPhotos:12];
        Photographer* petya = [[Photographer alloc] initWithCamera:CANON andNumberOfPhotos:10];
        [vasya checkMoney];
        [petya checkMoney];
        Trainee* igor = [[Trainee alloc] initWithCamera:CANON andNumberOfPhotos:50];
        [igor checkMoney];

    }
    return 0;
}
