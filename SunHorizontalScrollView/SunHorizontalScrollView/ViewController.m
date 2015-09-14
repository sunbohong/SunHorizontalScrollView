//
//  ViewController.m
//  SunHorizontalScrollView
//
//  Created by 孙博弘 on 15/9/14.
//  Copyright © 2015年 孙博弘. All rights reserved.
//

#import "ViewController.h"


#import "SunHorizontalScrollTableViewCell.h"

#import "SDImageCache.h"

@interface ViewController ()<SunHorizontalScrollTableViewCellDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self.tableView registerClass:[SUNScrollTableViewCell class] forCellReuseIdentifier:@"Cell"];

    [[SDImageCache sharedImageCache] cleanDisk];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableView
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return [SUNScrollTableViewCell heightForIndexPath:indexPath];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1111;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString * const cellIdentifier = @"Cell";
    SUNScrollTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];

    if (!cell) {
        cell = [[SUNScrollTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    cell.delegate = self;

    cell.tag = indexPath.row;

    [cell setMedia:@[
                     [SunHorizontalScrollMedia mediaWithType:SunHorizontalScrollMediaTypeImageURL
                                                      object:[NSURL URLWithString:@"https://pixabay.com/static/uploads/photo/2015/05/28/05/03/portrait-787522_640.jpg"]],
                     [SunHorizontalScrollMedia mediaWithType:SunHorizontalScrollMediaTypeImageURL
                                                      object:[NSURL URLWithString:@"https://pixabay.com/static/uploads/photo/2015/05/28/05/03/portrait-787522_640.jpg"]],
                     [SunHorizontalScrollMedia mediaWithType:SunHorizontalScrollMediaTypeImageURL
                                                      object:[NSURL URLWithString:@"https://pixabay.com/static/uploads/photo/2015/05/28/05/03/portrait-787522_640.jpg"]],
                     [SunHorizontalScrollMedia mediaWithType:SunHorizontalScrollMediaTypeImageURL
                                                      object:[NSURL URLWithString:@"https://pixabay.com/static/uploads/photo/2015/05/28/05/03/portrait-787522_640.jpg"]],
                     [SunHorizontalScrollMedia mediaWithType:SunHorizontalScrollMediaTypeImageURL
                                                      object:[NSURL URLWithString:@"https://pixabay.com/static/uploads/photo/2015/05/28/05/03/portrait-787522_640.jpg"]],
                     [SunHorizontalScrollMedia mediaWithType:SunHorizontalScrollMediaTypeImageURL
                                                      object:[NSURL URLWithString:@"https://pixabay.com/static/uploads/photo/2015/05/28/05/03/portrait-787522_640.jpg"]],
                     [SunHorizontalScrollMedia mediaWithType:SunHorizontalScrollMediaTypeImageURL
                                                      object:[NSURL URLWithString:@"https://pixabay.com/static/uploads/photo/2015/05/28/05/03/portrait-787522_640.jpg"]],
                     [SunHorizontalScrollMedia mediaWithType:SunHorizontalScrollMediaTypeImageURL
                                                      object:[NSURL URLWithString:@"https://pixabay.com/static/uploads/photo/2015/05/28/05/03/portrait-787522_640.jpg"]],
                     [SunHorizontalScrollMedia mediaWithType:SunHorizontalScrollMediaTypeImageURL
                                                      object:[NSURL URLWithString:@"https://pixabay.com/static/uploads/photo/2015/05/28/05/03/portrait-787522_640.jpg"]],
                     [SunHorizontalScrollMedia mediaWithType:SunHorizontalScrollMediaTypeImageURL
                                                      object:[NSURL URLWithString:@"https://pixabay.com/static/uploads/photo/2015/05/28/05/03/portrait-787522_640.jpg"]],
                     [SunHorizontalScrollMedia mediaWithType:SunHorizontalScrollMediaTypeImageURL
                                                      object:[NSURL URLWithString:@"https://pixabay.com/static/uploads/photo/2015/05/28/05/03/portrait-787522_640.jpg"]],
                     [SunHorizontalScrollMedia mediaWithType:SunHorizontalScrollMediaTypeImageURL
                                                      object:[NSURL URLWithString:@"https://pixabay.com/static/uploads/photo/2015/05/28/05/03/portrait-787522_640.jpg"]],
                     [SunHorizontalScrollMedia mediaWithType:SunHorizontalScrollMediaTypeImageURL
                                                      object:[NSURL URLWithString:@"https://pixabay.com/static/uploads/photo/2015/05/28/05/03/portrait-787522_640.jpg"]],
                     [SunHorizontalScrollMedia mediaWithType:SunHorizontalScrollMediaTypeImageURL
                                                      object:[NSURL URLWithString:@"https://pixabay.com/static/uploads/photo/2015/05/28/05/03/portrait-787522_640.jpg"]],
                     ]
     ];

    return cell;
}

#pragma mark - SunHorizontalScrollTableViewCellDelegate
- (void)scrollTableViewCell:(SUNScrollTableViewCell *)scrollTableViewCell didSelectMediaAtIndexPath:(NSIndexPath *)indexPath atRow:(NSInteger)row {
    NSLog(@"[SUNScrollTableViewCell] row:%d, media selected:%d", (int)row, (int)indexPath.row);
}

@end
