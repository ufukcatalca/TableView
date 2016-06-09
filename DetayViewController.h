//
//  DetayViewController.h
//  TableViewTutorial
//
//  Created by Mac on 08/06/16.
//  Copyright © 2016 Mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetayViewController : UIViewController

@property (weak, nonatomic) NSString *detayText;

@property (weak, nonatomic) IBOutlet UIImageView *detayImage;

@property (weak, nonatomic) IBOutlet UILabel *detayTextLabel;

@end
