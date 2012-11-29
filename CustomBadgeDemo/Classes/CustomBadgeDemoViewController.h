//
//  CustomBadgeDemoViewController.h
//  CustomBadge
//
//  Created by Alessandro Calzavara on 29/11/12.
//
//

#import <UIKit/UIKit.h>

@interface CustomBadgeDemoViewController : UIViewController
{
    UIScrollView * _scrollView;
    UIView * _contentView;
}

@property (retain, nonatomic) IBOutlet UIScrollView * scrollView;
@property (retain, nonatomic) IBOutlet UIView * contentView;

@end
