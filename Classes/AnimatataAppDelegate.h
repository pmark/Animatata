//
//  AnimatataAppDelegate.h
//  Animatata
//
//  Created by P. Mark Anderson on 10/12/10.
//  Copyright 2010 Digimarc Corporation, USA. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AnimatataViewController;

@interface AnimatataAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    AnimatataViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet AnimatataViewController *viewController;

@end

