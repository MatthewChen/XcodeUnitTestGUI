//
//  SZXCodeController.h
//  XcodeUnitTestGUI
//
//  Created by Jon Nall on 8/30/09.
//  Copyright 2009 STUNTAZ!!!. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "SZApplescriptInterface.h"

@interface SZXCodeController : NSObject
{
    SZApplescriptInterface* scriptInterface;
    NSAppleScript* script;
}
-(NSArray*)unitTestBundles;
-(void)setTarget:(NSString*)theName;
-(NSString*)runUnitTestBundle:(NSString*)theBundleName;
-(NSString*)pathToBundle:(NSString*)theName;
@end
