//
//  DoctorDelegateProtocol.h
//  homework03
//
//  Created by Dmitry An on 02/01/2024.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol DoctorDelegateProtocol <NSObject>

@property (nonatomic) NSString * name;
- (void) swallowThePill;

@end

NS_ASSUME_NONNULL_END
