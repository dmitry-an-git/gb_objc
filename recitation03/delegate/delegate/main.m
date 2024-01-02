//
//  main.m
//  delegate
//
//  Created by Dmitry An on 02/01/2024.
//

#import <Foundation/Foundation.h>
#import "Student.h"
#import "Teacher.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        Student * student = [Student new];
        Teacher * teacher = [Teacher new];
//        teacher.student = student;
        teacher.delegate = student;
        [teacher prepareHomeWork];
    }
    return 0;
}
