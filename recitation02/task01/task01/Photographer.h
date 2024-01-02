//
//  Photographer.h
//  task01
//
//  Created by Dmitry An on 24/12/2023.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger, CameraType) {
    CANON, NIKON
};

@interface Photographer : NSObject {
    @private CameraType _cameraType;
    @private NSInteger _startNumberOfPhoto;
    @private NSInteger _wage;
}

- (instancetype) initWithCamera: (CameraType) cameraType;
- (instancetype) initWithCamera: (CameraType) cameraType andNumberOfPhotos: (NSInteger) numberOfPhotos;
- (instancetype) initWithCamera: (CameraType) cameraType andNumberOfPhotos: (NSInteger) numberOfPhotos andWage: (NSInteger) wage;
- (CameraType) getCameraType;
- (void) setCameraType: (CameraType) cameraType;
- (NSInteger) getStartNumberOfPhoto;
- (void) setStartNumberOfPhoto: (NSInteger) startNumberOfPhoto;
- (NSInteger) getWage;
- (void) setWage: (NSInteger) wage;
- (void) checkMoney;

@end

NS_ASSUME_NONNULL_END
