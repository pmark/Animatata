//
//  AnimatataViewController.m
//  Animatata
//
//  Created by P. Mark Anderson on 10/12/10.
//  Copyright 2010 Digimarc Corporation, USA. All rights reserved.
//

#import "AnimatataViewController.h"
#import <QuartzCore/QuartzCore.h>

#define DEG2RAD(A)			((A) * 0.01745329278)
#define RAD2DEG(A)			((A) * 57.2957786667)

@implementation AnimatataViewController

- (void)dealloc 
{
    [animA1 release];
    animA1 = nil;
    
    [overlay release];
    overlay = nil;
    
    [super dealloc];
}

- (void) loadAnim1
{
    
    NSArray *images = [NSArray arrayWithObjects:
                       [UIImage imageNamed:@"a0.jpg"],
//                       [UIImage imageNamed:@"a1.jpg"],
                       [UIImage imageNamed:@"a0.jpg"],
                       [UIImage imageNamed:@"a1.jpg"],
                       [UIImage imageNamed:@"a2.jpg"],
                       [UIImage imageNamed:@"a3.jpg"],
                       [UIImage imageNamed:@"a4.jpg"],
//                       [UIImage imageNamed:@"a3.jpg"],
//                       [UIImage imageNamed:@"a4.jpg"],
//                       [UIImage imageNamed:@"a3.jpg"],
                       
//                       [UIImage imageNamed:@"a4.jpg"],
                       [UIImage imageNamed:@"a5.jpg"],
                       [UIImage imageNamed:@"a6.jpg"],
//                       [UIImage imageNamed:@"a5.jpg"],
                       
//                       [UIImage imageNamed:@"a4.jpg"],
//                       [UIImage imageNamed:@"a5.jpg"],
//                       [UIImage imageNamed:@"a6.jpg"],
//                       [UIImage imageNamed:@"a6.jpg"],
//                       [UIImage imageNamed:@"a6.jpg"],
                       [UIImage imageNamed:@"a6.jpg"],
                       [UIImage imageNamed:@"a6.jpg"],
                       [UIImage imageNamed:@"a5.jpg"],
                       
                       [UIImage imageNamed:@"a4.jpg"],
//                       [UIImage imageNamed:@"a5.jpg"],
//                       [UIImage imageNamed:@"a6.jpg"],
//                       [UIImage imageNamed:@"a5.jpg"],
                       
//                       [UIImage imageNamed:@"a4.jpg"],
//                       [UIImage imageNamed:@"a5.jpg"],
//                       [UIImage imageNamed:@"a4.jpg"],
//                       [UIImage imageNamed:@"a5.jpg"],
//                       [UIImage imageNamed:@"a4.jpg"],
//                       [UIImage imageNamed:@"a5.jpg"],
//                       [UIImage imageNamed:@"a4.jpg"],
//                       [UIImage imageNamed:@"a5.jpg"],
//                       [UIImage imageNamed:@"a4.jpg"],
//                       [UIImage imageNamed:@"a3.jpg"],
//                       [UIImage imageNamed:@"a2.jpg"],
//                       [UIImage imageNamed:@"a3.jpg"],
//                       [UIImage imageNamed:@"a2.jpg"],
                       [UIImage imageNamed:@"a3.jpg"],
                       [UIImage imageNamed:@"a2.jpg"],
                       [UIImage imageNamed:@"a1.jpg"],
//                       [UIImage imageNamed:@"a2.jpg"],
//                       [UIImage imageNamed:@"a1.jpg"],
                       [UIImage imageNamed:@"a0.jpg"],
//                       [UIImage imageNamed:@"a1.jpg"],
//                       [UIImage imageNamed:@"a0.jpg"],
//                       [UIImage imageNamed:@"a0.jpg"],
//                       [UIImage imageNamed:@"a0.jpg"],
//                       [UIImage imageNamed:@"a0.jpg"],
//                       [UIImage imageNamed:@"a0.jpg"],
                       [UIImage imageNamed:@"a0.jpg"],
                       [UIImage imageNamed:@"a0.jpg"],
//                       [UIImage imageNamed:@"a0.jpg"],
//                       [UIImage imageNamed:@"a0.jpg"],
/*
                       [UIImage imageNamed:@"a0.jpg"],
                       [UIImage imageNamed:@"a1.jpg"],
                       [UIImage imageNamed:@"a0.jpg"],
                       [UIImage imageNamed:@"a1.jpg"],
                       [UIImage imageNamed:@"a0.jpg"],
                       [UIImage imageNamed:@"a1.jpg"],
                       [UIImage imageNamed:@"a0.jpg"],
                       [UIImage imageNamed:@"a1.jpg"],
                       [UIImage imageNamed:@"a0.jpg"],
                       [UIImage imageNamed:@"a1.jpg"],
                       [UIImage imageNamed:@"a0.jpg"],
                       [UIImage imageNamed:@"a1.jpg"],
                       [UIImage imageNamed:@"a0.jpg"],
                       [UIImage imageNamed:@"a1.jpg"],
                       [UIImage imageNamed:@"a1.jpg"],
                       [UIImage imageNamed:@"a1.jpg"],
                       [UIImage imageNamed:@"a1.jpg"],
                       [UIImage imageNamed:@"a1.jpg"],
*/
                       nil
                       ];
    
    [animA1 setAnimationImages:images];    
}

- (void) loadAnim2
{
    
    NSArray *images = [NSArray arrayWithObjects:
                       [UIImage imageNamed:@"a0.jpg"],
                       [UIImage imageNamed:@"a1.jpg"],
                       [UIImage imageNamed:@"a0.jpg"],
                       [UIImage imageNamed:@"a1.jpg"],
//                       [UIImage imageNamed:@"a2.jpg"],
//                       [UIImage imageNamed:@"a1.jpg"],
                       [UIImage imageNamed:@"a0.jpg"],
                       [UIImage imageNamed:@"a1.jpg"],
                       nil
                       ];
    
    [animA1 setAnimationImages:images];    
}

- (void) spin
{
    CGFloat radians = DEG2RAD(-180.0f);
    
    CATransform3D xform = CATransform3DMakeRotation(radians, 0, 0, 1.0);
    CABasicAnimation *rotation = [CABasicAnimation animationWithKeyPath:@"transform"];
    
    rotation.cumulative = YES;
    rotation.toValue = [NSValue valueWithCATransform3D:xform];
    rotation.duration = 0.06f;
    rotation.autoreverses = NO;
    rotation.repeatCount = 1e100f;
    [animA1.layer addAnimation:rotation forKey:@"rotation"];
}

- (void) overlaySpin
{
	[UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:10.0];
    [UIView setAnimationRepeatAutoreverses:YES];
    [UIView setAnimationRepeatCount:1e100f];
    
    //    overlay.transform = CGAffineTransformMakeRotation(M_PI);
    overlay.transform = CGAffineTransformConcat(
                        CGAffineTransformMakeRotation(M_PI),
                        CGAffineTransformMakeScale(10, 30));
    
    
    [UIView commitAnimations];
}


- (void) fade
{
	[UIView beginAnimations:nil context:nil];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseOut];
    [UIView setAnimationDuration:2.0];
    [UIView setAnimationRepeatAutoreverses:YES];
    [UIView setAnimationRepeatCount:1e100f];
     
    overlay.alpha = 0.0;    
    animA1.alpha = 1.0;    
    
    [UIView commitAnimations];
}

- (void) viewDidLoad 
{
    [super viewDidLoad];
    
    [self loadAnim1];

    animA1.animationDuration = 30;
    [animA1 startAnimating];

    [self spin];
    
    [self fade];
    [self overlaySpin];
}


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return NO;
}

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


@end
