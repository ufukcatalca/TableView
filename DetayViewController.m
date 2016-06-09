//
//  DetayViewController.m
//  TableViewTutorial
//
//  Created by Mac on 08/06/16.
//  Copyright © 2016 Mac. All rights reserved.
//

#import "DetayViewController.h"

@interface DetayViewController ()

@end

@implementation DetayViewController


@synthesize detayTextLabel;
@synthesize detayText;


- (void)viewDidLoad {
    [super viewDidLoad];

    
      self.detayTextLabel.text = self.detayText;
    self.detayImage.image = [UIImage imageNamed:self.imageStack];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
