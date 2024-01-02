//
//  Teacher.h
//  delegate
//
//  Created by Dmitry An on 02/01/2024.
//

#import <Foundation/Foundation.h>
#import "Student.h"
#import "TeacherDelegate.h"

NS_ASSUME_NONNULL_BEGIN

@interface Teacher : NSObject

@property (nonatomic, weak, nullable) id<TeacherProtocol> delegate;
//@property (nonatomic) Student * student;

- (void) prepareHomeWork;

@end

NS_ASSUME_NONNULL_END
