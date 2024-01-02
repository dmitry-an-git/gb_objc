//
//  main.m
//  homework02
//
//  Created by Dmitry An on 26/12/2023.
//

#import <Foundation/Foundation.h>
#import "Triangle.h"
#import "Circle.h"
#import "Rectangle.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Triangle* triangle = [[Triangle alloc] initWithSideA:3 SideB:4 SideC:5];
        Circle* circle = [[Circle alloc] initWithRadius:10];
        Rectangle* rectangle = [[Rectangle alloc] initWithSideA:10 sideB:5];
        Rectangle* rectangle2 = [[Rectangle alloc] initWithSideA:7 sideB:5];
        
        NSArray *shapes = @[triangle, circle, rectangle, rectangle2];
        for (Figure *figure in shapes) {
            NSLog(@"%@", figure);
        }
        
    }
    return 0;
}
