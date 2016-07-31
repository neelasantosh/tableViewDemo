//
//  ViewController.m
//  tableViewDemo
//
//  Created by Rajesh on 11/12/15.
//  Copyright (c) 2015 CDAC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize label1,tableViewCDACInfo,arrayCorse,arrayFaculties;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    tableViewCDACInfo.dataSource=self;
    tableViewCDACInfo.delegate=self;
    arrayFaculties=[[NSMutableArray alloc]initWithObjects:@"Suraj Sir",@"Hemant Sir",@"Madhura Mam",@"Bansal Sir", nil];
    arrayCorse=[[NSMutableArray alloc]initWithObjects:@"DMC",@"DAC",@"DiTTis",@"DBDA", nil];
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (section==0) {
        return arrayCorse.count;
    }
    if (section==1) {
        return arrayFaculties.count;
    }
    return 0;
}

//3. cell content

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //execute for each row
    UITableViewCell *cell=[[UITableViewCell alloc]init];
    
    if (indexPath.section==0) {
        cell.textLabel.text=[arrayCorse objectAtIndex:indexPath.row];
        UIImage *imgCourse=[UIImage imageNamed:@"course.png"];
        cell.imageView.image=imgCourse;
    }
    if (indexPath.section==1) {
        cell.textLabel.text=[arrayFaculties objectAtIndex:indexPath.row];
        UIImage *imgCourse=[UIImage imageNamed:@"faculty.png"];
        cell.imageView.image=imgCourse;
    }
   
    return cell;
    
}

//headers for sections
-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    if (section==0) {
        NSString *header=@"Course:";
        return header;
    }
    if (section==1) {
        NSString *header=@"Faculties";
        return header;
    }
    
    return @"";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
