//
//  Loader.m
//  recitation05
//
//  Created by Dmitry An on 22/01/2024.
//

#import "Loader.h"

@implementation Loader

- (NSURLSession *) session {
    if (!_session) {
        NSURLSessionConfiguration * sessionConf = [NSURLSessionConfiguration defaultSessionConfiguration];
        sessionConf.HTTPAdditionalHeaders = @{@"Content-Type":@"application/json",
                                              @"Accept":@"application/json",
                                              @"User-Agent":@"iPhone 15 ProMax simulator, iOS 17.0"};
        _session = [NSURLSession sessionWithConfiguration:sessionConf];
    }
    return _session;
}

- (void)performGetRequestFromURL:(NSString *)stringURL arguments:(NSDictionary *)arguments block:(void (^)(NSDictionary *, NSError *))block {
    
    NSURLComponents * urlComponents = [NSURLComponents componentsWithString:stringURL];
    if (arguments) {
        NSMutableArray<NSURLQueryItem*> * querryItems = [NSMutableArray new];
        for (NSString * key in arguments.allKeys) {
            [querryItems addObject:[NSURLQueryItem queryItemWithName:key value:arguments[key]]];
        }
        urlComponents.queryItems = [querryItems copy];
    }
    NSURL * url = urlComponents.URL;
    NSURLSessionDataTask * dataTask = [self.session dataTaskWithURL:url completionHandler:^(NSData * data, NSURLResponse * response, NSError * error) {
        if (error) {
            block(nil,error);
            return;
        }
        NSError * parsingError;
        NSDictionary * dict = [self parseJSONData:data error:&parsingError];
        if (parsingError) {
            block(nil, parsingError);
            return;
        }
        block(dict, nil);
    }];
    [dataTask resume];
    
}

- (void)performPostRequestFromURL:(NSString *)stringURL arguments:(NSDictionary *)arguments block:(void (^)(NSDictionary * , NSError * ))block {
    
    NSURL * url = [NSURL URLWithString:stringURL];
    NSMutableURLRequest * urlRequest = [[NSMutableURLRequest alloc] initWithURL:url];
    urlRequest.HTTPMethod = @"POST";
    if (arguments) {
        NSData * data = [self dataFromJSON:arguments error:nil];
        urlRequest.HTTPBody = data;
    }
    NSURLSessionDataTask * task = [self.session dataTaskWithRequest:urlRequest completionHandler:^(NSData * data, NSURLResponse * response, NSError *  error) {
        if (error) {
            block(nil,error);
            return;
        }
        NSError * parsingError;
        NSDictionary * dict = [self parseJSONData:data error:&parsingError];
        if (parsingError) {
            block(nil, parsingError);
            return;
        }
        block(dict, nil);
    }];
    [task resume];
}

- (NSDictionary *)parseJSONData:(NSData *)data error:(NSError **)error {
    
    return [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:error];
}

- (NSData *)dataFromJSON:(NSDictionary *)JSONDict error:(NSError **)error {
    
    return [NSJSONSerialization dataWithJSONObject:JSONDict options:kNilOptions error:error];
}

@end
