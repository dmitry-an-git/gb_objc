//
//  Photographer.m
//  task01
//
//  Created by Dmitry An on 24/12/2023.
//

#import "Photographer.h"

@implementation Photographer

- (instancetype)initWithCamera:(CameraType)cameraType {
    self = [super init];
    if (self) {
        _cameraType = cameraType;
        _startNumberOfPhoto = 0;
        _wage = 0;
    }
    return self;
}

- (instancetype)initWithCamera:(CameraType)cameraType andNumberOfPhotos:(NSInteger)numberOfPhotos {
    self = [super init];
    if (self) {
        _cameraType = cameraType;
        _startNumberOfPhoto = numberOfPhotos;
        _wage = 0;
    }
    return self;
}

- (instancetype)initWithCamera:(CameraType)cameraType andNumberOfPhotos:(NSInteger)numberOfPhotos andWage:(NSInteger)wage {
    self = [super init];
    if (self) {
        _cameraType = cameraType;
        _startNumberOfPhoto = numberOfPhotos;
        _wage = wage;
    }
    return self;
}

- (CameraType)getCameraType {
    return _cameraType;
}

- (void)setCameraType:(CameraType)cameraType {
    _cameraType = cameraType;
}

- (NSInteger)getStartNumberOfPhoto {
    return _startNumberOfPhoto;
}

- (void)setStartNumberOfPhoto:(NSInteger)startNumberOfPhoto {
    _startNumberOfPhoto = startNumberOfPhoto;
}

- (NSInteger)getWage {
    return _wage;
}

- (void)setWage:(NSInteger)wage {
    _wage = wage;
}


- (void)checkMoney {
    NSInteger co;
    switch (_cameraType) {
        case NIKON:
            co = 10;
            break;
        case CANON:
            co = 5;
            break;
    }
    NSLog(@"The salary is %li", (co * _startNumberOfPhoto));
}

- (void) dealloc {
    NSLog(@"%s", __PRETTY_FUNCTION__);
}

@end
