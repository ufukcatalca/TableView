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
    
    //başlık kısmı
    self.title=@"NavigationBar Title";
    //ilk array yazılar burada yer alıyor
    self.listem = @[@"Çöp Kutusu",@"Beyin",@"Chat",@"Diagram",@"idea",@"Horse"];
    // resimler için array resimler burada yer alıyor
    self.resimler =@[@"basket.png",@"brain.png",@"chat.png",@"diagram.png",@"idea.png",@"horse.png"];
    
    
    //Navigationbar'in stil işlemleri
    self.navigationController.navigationBar.barTintColor = [UIColor yellowColor];
    self.navigationController.navigationBar.tintColor = [UIColor blackColor];
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor blackColor]}];
    self.navigationController.navigationBar.translucent = NO;
}


#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.listem count]/2; // dizimdeki eleman kadar deger oluştur
}


// tableview içerigini dolduracak veriyi burda verdik
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MainCell"];
    
    if (cell==nil) {
        
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"MainCell"];
        
    }
    
    NSString *stringForCell;
    if (indexPath.section == 0) {
        stringForCell= [_listem objectAtIndex:indexPath.row];

        
    }
    else if (indexPath.section == 1){
        stringForCell= [_listem objectAtIndex:indexPath.row+ [_listem count]/2];

    }
    
    [cell.textLabel setText:stringForCell];
       cell.imageView.image = [UIImage imageNamed:[_resimler objectAtIndex:indexPath.row]];
    
    return cell;
}



- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 2;
}




-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    
    NSString *headerTitle;
    
    if (section==0) {
        headerTitle = @"Section 1 Header";
    }
    else{
        headerTitle = @"Section 2 Header";
        
    }
    return headerTitle;
    
}



-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSLog(@" Satıra Tıklandı");
    
    
    
    
    
}


@end
