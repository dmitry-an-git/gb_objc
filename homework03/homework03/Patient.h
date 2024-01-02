//
//  Patient.h
//  homework03
//
//  Created by Dmitry An on 02/01/2024.
//

#import <Foundation/Foundation.h>
#import "DoctorDelegateProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface Patient : NSObject<DoctorDelegateProtocol>

@property (nonatomic) NSString * name;
@property (nonatomic) BOOL isSick;
- (id) initWithName: (NSString*) name;
- (void) swallowThePill;
- (void) tellIfSick;

@end

NS_ASSUME_NONNULL_END
