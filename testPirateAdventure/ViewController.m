//
//  ViewController.m
//  testPirateAdventure
//
//  Created by Alfred on 5/7/15.
//  Copyright (c) 2015 maptier. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.currentPoint = CGPointMake(0,0);
    Factory *factory = [[Factory alloc] init];
    self.tiles = [factory tiles];
    NSLog(@"%@", _tiles);
    NSLog(@"%f %f", self.currentPoint.x, self.currentPoint.y);
    NSLog(@"%lu",(unsigned long)[self.tiles count]);
    NSLog(@"%@", _tiles[1][1]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark - helper method
-(void)updateTile
{
    PATile *tileModel = [[self.tiles objectAtIndex:self.currentPoint.x] objectAtIndex:self.currentPoint.y];
    self.storyLabel.text = tileModel.story;
}
@end
