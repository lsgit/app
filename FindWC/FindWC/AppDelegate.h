//
//  AppDelegate.h
//  FindWC
//
//  Created by liushuai on 14/11/5.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BMapKit.h"
@interface AppDelegate : UIResponder <UIApplicationDelegate>
{
    BMKMapManager *_mapManager;
}
@property (strong, nonatomic) UIWindow *window;


@end
