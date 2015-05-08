//
//  ViewController.h
//  testPirateAdventure
//
//  Created by Alfred on 5/7/15.
//  Copyright (c) 2015 maptier. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Factory.h"
#import "PATile.h"

@interface ViewController : UIViewController
@property (nonatomic, readwrite) CGPoint currentPoint;
@property (strong, nonatomic) NSArray *tiles;

@property (strong, nonatomic) IBOutlet UILabel *storyLabel;
@end

