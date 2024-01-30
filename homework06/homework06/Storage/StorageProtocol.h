//
//  
//  homework06
//
//  Created by Dmitry An on 29/01/2024.
//

#import <UIKit/UIKit.h>
#import "Robot.h"

@protocol StorageProtocol <NSObject>

- (void)saveRobot:(Robot *)robot;
- (Robot *)loadRobot;

@end
