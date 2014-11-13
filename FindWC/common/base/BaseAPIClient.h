//
//  BaseAPIClient.h
//  TFHppleDemo
//
//  Created by liushuai on 14-11-1.
//  Copyright (c) 2014年 liushuai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFNetworking.h"
#import "Contacts.h"
@protocol BaseAPIClientDelegate<NSObject>
@end


#pragma mark----------------------------------------------
@interface BaseAPIClient : AFHTTPRequestOperationManager
@property(nonatomic,assign)id<BaseAPIClientDelegate> delegate;
+(BaseAPIClient *)shareClient;
- (void)cancelRequestWithMethod:(NSString *)method path:(NSString *)path;
- (void)openAPIPostToPath:(NSString *)path
                   params:(NSDictionary *)params
                  success:(void (^)(AFHTTPRequestOperation *operation, id responseObject))success
                  failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure;
- (void)openAPIGetToPath:(NSString *)path
                  params:(NSDictionary *)params
                 success:(void (^)(AFHTTPRequestOperation *operation, id responseObject))success
                 failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure;
- (BOOL) isValidDelegateForSelector:(id)delegate selector:(SEL)selector;
-(NSString *)JSONString:(NSString *)aString;
@end
