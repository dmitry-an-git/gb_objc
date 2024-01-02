//
//  main.m
//  homework03
//
//  Created by Dmitry An on 02/01/2024.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Doctor * doc = [Doctor new];
        Patient * vasya = [[Patient alloc] initWithName: @"Vasya"];
        doc.delegate = vasya;
        [vasya tellIfSick];
        [doc administerThePill];
        [vasya tellIfSick];
    }
    return 0;
}
