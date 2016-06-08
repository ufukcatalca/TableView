//
//  ListTableViewController.m
//  TableViewTutorial
//
//  Created by Mac on 08/06/16.
//  Copyright © 2016 Mac. All rights reserved.
//

#import "ListTableViewController.h"

@interface ListTableViewController ()
@end

@implementation ListTableViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.title=@"NavigationBar Title";
    self.listem = @[@"deger 1",@"deger 2",@"deger 3",@"deger4"];
    
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.listem count]; // dizimdeki eleman kadar deger oluştur
}


// tableview içerigini dolduracak veriyi burda verdik
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MainCell"];
    
    if (cell==nil) {
        
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"MainCell"];
        
    }
    
    cell.textLabel.text= self.listem[indexPath.row];
    return cell;
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    
    
    return @"Section Title";
}


@end
