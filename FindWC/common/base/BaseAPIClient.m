//
//  BaseAPIClient.m
//  TFHppleDemo
//
//  Created by liushuai on 14-11-1.
//  Copyright (c) 2014年 liushuai. All rights reserved.
//

#import "BaseAPIClient.h"

@implementation BaseAPIClient

+(BaseAPIClient *)shareClient
{
    static BaseAPIClient *_sharedClient = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedClient = [[BaseAPIClient alloc] initWithBaseURL:nil];});
    
    return _sharedClient;
}

#pragma mark 发出网络请求操作
- (void)openAPIPostToPath:(NSString *)path
                   params:(NSDictionary *)params
                  success:(void (^)(AFHTTPRequestOperation *operation, id responseObject))success
                  failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure
{
    NSMutableDictionary *newParams = [NSMutableDictionary dictionaryWithDictionary:params];
    self.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    [self POST:path parameters:newParams success:success failure:failure];
}
- (void)openAPIGetToPath:(NSString *)path
                   params:(NSDictionary *)params
                  success:(void (^)(AFHTTPRequestOperation *operation, id responseObject))success
                  failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure
{
    
//    //调整3840
    self.requestSerializer = [ AFHTTPRequestSerializer serializer];
    self.responseSerializer = [ AFHTTPResponseSerializer serializer];
    
    [self GET:path parameters:params success:success failure:failure];
}

- (NSMutableURLRequest *)requestWithPath:(NSString *)path
                              parameters:(NSDictionary *)parameters
{
    if (path == nil) {
        return nil;
    }
    
    NSURL * url = [NSURL URLWithString:path];
    
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] initWithURL:url];
    [request setHTTPMethod:@"POST"];
    if (parameters) {
        NSString *charset = (NSString *)CFStringConvertEncodingToIANACharSetName(CFStringConvertNSStringEncodingToEncoding(NSUTF8StringEncoding));
        [request setValue:[NSString stringWithFormat:@"application/x-www-form-urlencoded; charset=%@", charset] forHTTPHeaderField:@"Content-Type"];
        //NSString *jsonString = AFJSONStringFromParameters(parameters);
        //[request setHTTPBody:[jsonString dataUsingEncoding:NSUTF8StringEncoding]];
    }
    
    return request;
}

#pragma mark 取消网络请求操作
- (void)cancelRequestWithMethod:(NSString *)method path:(NSString *)path
{
    [self cancelAllHTTPOperationsWithMethod:method path:path];
}
- (void)cancelAllHTTPOperationsWithMethod:(NSString *)method path:(NSString *)path {
    for (NSOperation *operation in [self.operationQueue operations]) {
        if (![operation isKindOfClass:[AFHTTPRequestOperation class]]) {
            continue;
        }
        if ((!method || [method isEqualToString:[[(AFHTTPRequestOperation *)operation request] HTTPMethod]]) && [path isEqualToString:[[[(AFHTTPRequestOperation *)operation request] URL] absoluteString]]) {
            [operation cancel];
        }
    }
}
- (BOOL) isValidDelegateForSelector:(id)delegate selector:(SEL)selector
{
    return ((delegate != nil) && [delegate respondsToSelector:selector]);
}
-(NSString *)JSONString:(NSString *)aString {
    NSMutableString *s = [NSMutableString stringWithString:aString];
    [s replaceOccurrencesOfString:@"\\" withString:@"\\\\" options:NSCaseInsensitiveSearch range:NSMakeRange(0, [s length])];
    //[s replaceOccurrencesOfString:@"/" withString:@"\\/" options:NSCaseInsensitiveSearch range:NSMakeRange(0, [s length])];
    //[s replaceOccurrencesOfString:@"\n" withString:@"\\n" options:NSCaseInsensitiveSearch range:NSMakeRange(0, [s length])];
    //[s replaceOccurrencesOfString:@"\b" withString:@"\\b" options:NSCaseInsensitiveSearch range:NSMakeRange(0, [s length])];
    //[s replaceOccurrencesOfString:@"\f" withString:@"\\f" options:NSCaseInsensitiveSearch range:NSMakeRange(0, [s length])];
    //[s replaceOccurrencesOfString:@"\r" withString:@"\\r" options:NSCaseInsensitiveSearch range:NSMakeRange(0, [s length])];
    //[s replaceOccurrencesOfString:@"\t" withString:@"\\t" options:NSCaseInsensitiveSearch range:NSMakeRange(0, [s length])];
    return [NSString stringWithString:s];
}

@end
