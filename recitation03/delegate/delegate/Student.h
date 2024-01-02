//
//  Student.h
//  delegate
//
//  Created by Dmitry An on 02/01/2024.
//

#import <Foundation/Foundation.h>
#import "TeacherDelegate.h"

NS_ASSUME_NONNULL_BEGIN

@interface Student : NSObject<TeacherProtocol>

- (void) doHomeWork;

@end

NS_ASSUME_NONNULL_END
