//
//  Teacher.m
//  delegate
//
//  Created by Dmitry An on 02/01/2024.
//

#import "Teacher.h"

@implementation Teacher

- (void) prepareHomeWork {
//    [self.student doHomeWork];
    [self.delegate doHomeWork];
}

@end
