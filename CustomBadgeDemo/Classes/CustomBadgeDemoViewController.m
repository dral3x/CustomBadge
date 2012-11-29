//
//  CustomBadgeDemoViewController.m
//  CustomBadge
//
//  Created by Alessandro Calzavara on 29/11/12.
//
//

#import "CustomBadgeDemoViewController.h"
#import "CustomBadge.h"
#import "UIButton+CustomBadge.h"

@interface CustomBadgeDemoViewController ()

@end

@implementation CustomBadgeDemoViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    [self setupCustomBadges];
    [self setupButtonsWithCustomBadges];
    
    [self.scrollView addSubview:self.contentView];
    [self.scrollView setContentSize:self.contentView.frame.size];
}

- (void)setupCustomBadges
{
    // Create simple Badge
	//CustomBadge *customBadge1 = [CustomBadge customBadgeWithString:@"2"];
	CustomBadge *customBadge1 = [CustomBadge customBadgeWithString:@"2"
												   withStringColor:[UIColor whiteColor]
													withInsetColor:[UIColor redColor]
													withBadgeFrame:YES
											   withBadgeFrameColor:[UIColor whiteColor]
														 withScale:1.0
													   withShining:YES];
    
	// Create advanced Badge
    
	CustomBadge *customBadge2 = [CustomBadge customBadgeWithString:@"CustomBadge"
												   withStringColor:[UIColor blackColor]
													withInsetColor:[UIColor greenColor]
													withBadgeFrame:YES
											   withBadgeFrameColor:[UIColor yellowColor]
														 withScale:1.5
													   withShining:YES];
	
	CustomBadge *customBadge3 = [CustomBadge customBadgeWithString:@"Now Retina Ready!"
                                                   withStringColor:[UIColor whiteColor]
                                                    withInsetColor:[UIColor blueColor]
                                                    withBadgeFrame:YES
											   withBadgeFrameColor:[UIColor whiteColor]
														 withScale:1.5
													   withShining:YES];
    
	CustomBadge *customBadge4 = [CustomBadge customBadgeWithString:@"... and scalable"
												   withStringColor:[UIColor whiteColor]
													withInsetColor:[UIColor purpleColor]
													withBadgeFrame:YES
											   withBadgeFrameColor:[UIColor blackColor]
														 withScale:2.0
													   withShining:YES];
    
	CustomBadge *customBadge5 = [CustomBadge customBadgeWithString:@"... with Shining"
												   withStringColor:[UIColor blackColor]
													withInsetColor:[UIColor orangeColor]
													withBadgeFrame:YES
											   withBadgeFrameColor:[UIColor blackColor]
														 withScale:1.0
													   withShining:YES];
    
	CustomBadge *customBadge6 = [CustomBadge customBadgeWithString:@"... without Shining"
												   withStringColor:[UIColor whiteColor]
													withInsetColor:[UIColor brownColor]
													withBadgeFrame:YES
											   withBadgeFrameColor:[UIColor blackColor]
														 withScale:1.0
													   withShining:NO];
    
	CustomBadge *customBadge7 = [CustomBadge customBadgeWithString:@"Still Open & Free"
												   withStringColor:[UIColor whiteColor]
													withInsetColor:[UIColor blackColor]
													withBadgeFrame:YES
											   withBadgeFrameColor:[UIColor yellowColor]
														 withScale:1.25
													   withShining:YES];
	
	
	// Set Position of Badge 1
	[customBadge1 setFrame:CGRectMake(self.view.frame.size.width/2-customBadge1.frame.size.width/2+customBadge2.frame.size.width/2, 20, customBadge1.frame.size.width, customBadge1.frame.size.height)];
	[customBadge2 setFrame:CGRectMake(self.view.frame.size.width/2-customBadge2.frame.size.width/2, 20, customBadge2.frame.size.width, customBadge2.frame.size.height)];
	[customBadge3 setFrame:CGRectMake(self.view.frame.size.width/2-customBadge3.frame.size.width/2, 60, customBadge3.frame.size.width, customBadge3.frame.size.height)];
	[customBadge4 setFrame:CGRectMake(self.view.frame.size.width/2-customBadge4.frame.size.width/2, 100, customBadge4.frame.size.width, customBadge4.frame.size.height)];
	[customBadge5 setFrame:CGRectMake(self.view.frame.size.width/2-customBadge5.frame.size.width/2, 160, customBadge5.frame.size.width, customBadge5.frame.size.height)];
	[customBadge6 setFrame:CGRectMake(self.view.frame.size.width/2-customBadge6.frame.size.width/2, 210, customBadge6.frame.size.width, customBadge6.frame.size.height)];
	[customBadge7 setFrame:CGRectMake(self.view.frame.size.width/2-customBadge7.frame.size.width/2, 250, customBadge7.frame.size.width, customBadge7.frame.size.height)];
    
    
	// Add Badges to View
	[self.contentView addSubview:customBadge2];
	[self.contentView addSubview:customBadge1];
	[self.contentView addSubview:customBadge3];
	[self.contentView addSubview:customBadge4];
	[self.contentView addSubview:customBadge5];
	[self.contentView addSubview:customBadge6];
	[self.contentView addSubview:customBadge7];
    
	// Change text afterwards
	//[customBadge1 autoBadgeSizeWithString:@"New Text!"];
	
	
	
	// Convert Badge (based on UIView) to an UIImageView
	/*
     UIGraphicsBeginImageContextWithOptions((customBadge1.frame.size), FALSE, [[UIScreen mainScreen] scale]);
     [customBadge1.layer renderInContext:UIGraphicsGetCurrentContext()];
     UIImage *badgeAsImage = UIGraphicsGetImageFromCurrentImageContext();
     UIGraphicsEndImageContext();
     UIImageView *imageView = [[UIImageView alloc] initWithImage:badgeAsImage];
     imageView.frame = CGRectMake(0, 0, imageView.frame.size.width, imageView.frame.size.height);
     [self.view addSubview:imageView];
     [imageView release];
     */
}

- (void)setupButtonsWithCustomBadges
{
    UIButton * button1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button1 setTitle:@"Button with" forState:UIControlStateNormal];
    button1.frame = CGRectMake(self.view.frame.size.width/2-100/2, 350, 100, 40);
    [self.contentView addSubview:button1];

    [button1 setBadgeWithNumber:@42];
    
    
    
    
    UIButton * button2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button2 setTitle:@"Button with" forState:UIControlStateNormal];
    button2.frame = CGRectMake(self.view.frame.size.width/2-100/2, 410, 100, 40);
    [self.contentView addSubview:button2];

    [button2 setBadgeWithString:@"It's a string"];
    
    
    
    
    
    
    UIButton * button3 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button3 setTitle:@"Button with" forState:UIControlStateNormal];
    button3.frame = CGRectMake(self.view.frame.size.width/2-100/2, 480, 100, 40);
    [self.contentView addSubview:button3];

    CustomBadge *customBadge = [CustomBadge customBadgeWithString:@"CustomBadge"
                                                  withStringColor:[UIColor blackColor]
                                                   withInsetColor:[UIColor greenColor]
                                                   withBadgeFrame:YES
                                              withBadgeFrameColor:[UIColor yellowColor]
                                                        withScale:1.5
                                                      withShining:YES];
    
    [button3 setBadge:customBadge];
}
@end
