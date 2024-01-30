//
//  main.m
//  homework06
//
//  Created by Dmitry An on 29/01/2024.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "Robot.h"
#import "UserDefaultsStorage.h"

int main(int argc, char * argv[]) {
    NSString * appDelegateClassName;
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
    }
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}
