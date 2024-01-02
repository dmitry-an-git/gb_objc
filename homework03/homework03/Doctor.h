//
//  Doctor.h
//  homework03
//
//  Created by Dmitry An on 02/01/2024.
//

#import <Foundation/Foundation.h>
#import "DoctorDelegateProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface Doctor : NSObject

@property (nonatomic, weak, nullable) id<DoctorDelegateProtocol> delegate;

- (void) administerThePill;

@end

NS_ASSUME_NONNULL_END
