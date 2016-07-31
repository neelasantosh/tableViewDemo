//
//  ViewController.h
//  tableViewDemo
//
//  Created by Rajesh on 11/12/15.
//  Copyright (c) 2015 CDAC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>

@property (strong, nonatomic) IBOutlet UILabel *label1;
@property (strong, nonatomic) IBOutlet UITableView *tableViewCDACInfo;
@property NSMutableArray *arrayCorse,*arrayFaculties;
@end

