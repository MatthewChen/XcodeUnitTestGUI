//
//  SZXCodeController.m
//  XcodeUnitTestGUI
//
//  Created by Jon Nall on 8/30/09.
//  Copyright 2009 STUNTAZ!!!. All rights reserved.
//

#import "SZXCodeController.h"


@implementation SZXCodeController
-(id)init
{
    self = [super init];
    if(self != nil)
    {
        // TODO: Check if XCode is running
        NSString* path = [[NSBundle mainBundle] pathForResource:@"XcodeUnitTestSelector" ofType:@"scpt"];
        if (path != nil)
        {
            NSURL* url = [NSURL fileURLWithPath:path];
            if(url != nil)
            {
                scriptInterface = [[SZApplescriptInterface alloc] init];
                script = [[scriptInterface loadScript:url] retain];
            }
        }           
    }
    return self;
}

-(void)dealloc
{
    [scriptInterface release];
    [script release];
    [super dealloc];
}

-(NSArray*)unitTestBundles
{
    NSArray* result = [scriptInterface runSubroutine:@"getUnitTestBundles"
                                            ofScript:script
                                            withArgs:[NSArray array]];
    return result;
}

-(NSString*)runUnitTestBundle:(NSString*)theBundleName
{
    [self setTarget:theBundleName];
    
    NSString* result = [scriptInterface runSubroutine:@"doBuild"
                                             ofScript:script
                                             withArgs:[NSArray array]];
    return result;
}

-(void)setTarget:(NSString*)theName
{
    NSAppleEventDescriptor* nameDescr = [NSAppleEventDescriptor descriptorWithString:theName];
    [scriptInterface runSubroutine:@"setCurrentTarget"
                          ofScript:script
                          withArgs:[NSArray arrayWithObject:nameDescr]];
}

-(NSString*)pathToBundle:(NSString*)theName
{
    NSAppleEventDescriptor* nameDescr = [NSAppleEventDescriptor descriptorWithString:theName];
    NSString* result = [scriptInterface runSubroutine:@"getUnitTestBundlePath"
                                             ofScript:script
                                             withArgs:[NSArray arrayWithObject:nameDescr]];
    return result;
}

@end
