//
//  ListTableViewController.h
//  TableViewTutorial
//
//  Created by Mac on 08/06/16.
//  Copyright © 2016 Mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ListTableViewController : UITableViewController<UITableViewDelegate,UITableViewDataSource>


@property(nonatomic,strong)NSArray *listem;
@end
