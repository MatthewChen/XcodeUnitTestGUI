//
//  SZAppDelegate.h
//  XcodeUnitTestGUI
//
//  Created by Jon Nall on 8/29/09.
//  Copyright 2009 STUNTAZ!!!. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "SZXCodeController.h"
#import "SZTestSuiteDataSource.h"

@interface SZAppDelegate : NSObject
{
    SZXCodeController* xcodeController;
    NSString* curProject;
    NSArray* bundles;
    NSBundle* curBundle;
    NSOperationQueue* queue;
    BOOL isBuilding;
    
    IBOutlet SZTestSuiteDataSource* dataSource;
    IBOutlet NSOutlineView* outlineView;
    IBOutlet NSPopUpButton* bundleButton;
}
@property (assign) BOOL isBuilding;
-(IBAction)bundleChanged:(id)sender;
-(IBAction)runTests:(id)sender;
@end
