//
//  ColorTile.m
//  task01
//
//  Created by Dmitry An on 29/01/2024.
//
//

//Создайте класс
//ColorTile, который хранит 2 свойства
//UlColor tileColor;
//CGPoint &ileOrigin;
//Данный класс реализовывает протокол
//NSCoding. С помощью
//NSKeyedArchiver
//превратить объект в Data и сохранить в
//UserDefaults. Далее
//получить данные из
//UserDefaults и создать
//объект с помощью
//NSKeyedUnarchiver.

#import "ColorTile.h"

@implementation ColorTile

- (instancetype) initWithColor: (UIColor *) color andPoint: (CGPoint) point  {
    self = [super init];
    if (self) {
        _tileColor = color;
        _tileOrigin = point;
    }
    return self;
}


- (nullable instancetype)initWithCoder:(nonnull NSCoder *)coder {
    self = [super init];
    if (self) {
        self.tileColor = [coder decodeObjectForKey:@"color"];
        float x = [coder decodeFloatForKey:@"tileX"];
        float y = [coder decodeFloatForKey:@"tileY"];
        self.tileOrigin = CGPointMake(x, y);
    }
    return self;
}

- (void)encodeWithCoder:(nonnull NSCoder *)coder {
    [coder encodeObject:self.tileColor forKey:@"color"];
    [coder encodeFloat:self.tileOrigin.x forKey:@"tileX"];
    [coder encodeFloat:self.tileOrigin.y forKey:@"tileY"];
}


@end
