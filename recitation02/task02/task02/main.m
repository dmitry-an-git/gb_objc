//
//  main.m
//  task02
//
//  Created by Dmitry An on 24/12/2023.
//

#import <Foundation/Foundation.h>
#import "Student.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Student* piotr = [[Student alloc] initWithName:@"Piotr" surname:@"Piotrov" age:8];
        NSLog(@"%@", piotr);
        [piotr getElder];
        NSLog(@"%@", piotr);
    }
    return 0;
}
