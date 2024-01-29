//
//  ViewController.m
//  task01
//
//  Created by Dmitry An on 29/01/2024.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) NSUserDefaults * userDefaults;

-(void) resetDefaults;

@end

@implementation ViewController

//-(instancetype) initWithCoder:(NSCoder *)coder {
//    self = [super initWithCoder:<#coder#>];
//    if (self) {
//        
//    }
//    return self;
//}

- (void)viewDidLoad {
    [super viewDidLoad];
    _userDefaults = [NSUserDefaults standardUserDefaults];
    
    [self.userDefaults setInteger:42 forKey:@"integer"];
    [self.userDefaults setDouble:2.7182882459045 forKey:@"double"];
    [self.userDefaults setFloat:3.1415 forKey:@"float"];
    [self.userDefaults setObject:@"hello world" forKey:@"string"];
    
    NSLog(@"%s", __PRETTY_FUNCTION__);
    
    CGPoint point = CGPointMake(5, 10);
    UIColor * color = [UIColor redColor];
    ColorTile * colorTyle = [[ColorTile alloc] initWithColor:color andPoint:point];
    NSData * tileData = [NSKeyedArchiver archivedDataWithRootObject:colorTyle requiringSecureCoding:false error:nil];
    [self.userDefaults setObject:tileData forKey:@"tile"];
    
    
    NSFileManager * fileManager = [NSFileManager defaultManager];
    NSURL *path = [fileManager URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask].firstObject;
    NSLog(@"%@", path);
    NSURL *folderPath = [path URLByAppendingPathComponent:@"NewFolder"];
    NSURL *pathToData = [folderPath URLByAppendingPathComponent:@"data.txt"];
    NSData * data = [@"String to file" dataUsingEncoding:kCFStringEncodingUTF8];
    if ([fileManager createDirectoryAtURL:folderPath withIntermediateDirectories:true attributes:nil error:nil]) {
        [fileManager createFileAtPath:pathToData.path contents:data attributes:nil];
    }
    if ([fileManager fileExistsAtPath:pathToData.path]) {
        NSData * dataRead = [fileManager contentsAtPath:pathToData.path];
        NSString * encodedString = [[NSString alloc] initWithData:dataRead encoding:kCFStringEncodingUTF8];
        NSLog(@"%@", encodedString);
        [fileManager removeItemAtPath:pathToData.path error:nil];
        [fileManager removeItemAtPath:folderPath.path error:nil];
    }

}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    NSString * myString = [self.userDefaults stringForKey:@"string"]; // will return "" or 0 if empty
    NSLog(@"%@", myString);
    NSInteger myInt = [self.userDefaults integerForKey:@"integer"];
    NSLog(@"%li", myInt); // NS Integer contains long integer
    double myDouble = [self.userDefaults doubleForKey:@"double"]; // from C - basic data type
    NSLog(@"%f", myDouble);
    float myFloat = [self.userDefaults floatForKey:@"float"];
    NSLog(@"%f", myFloat);
    
    NSData * tileData = [self.userDefaults objectForKey:@"tile"];
//    ColorTile * colorTyle = [NSKeyedUnarchiver unarchivedObjectOfClass:ColorTile.self fromData:tileData error:nil];
    ColorTile * colorTyle = [NSKeyedUnarchiver unarchiveObjectWithData:tileData];
    NSLog(@"%@, (%f, %f)", colorTyle.tileColor, colorTyle.tileOrigin.x, colorTyle.tileOrigin.y);
    
   
    [self resetDefaults];
    
}

- (void)resetDefaults {
    NSDictionary * dict = [self.userDefaults dictionaryRepresentation];
    
    for (NSString *key in dict) {
        [self.userDefaults removeObjectForKey:key];
    }
    
}

@end
