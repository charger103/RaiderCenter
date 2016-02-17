//
//  FeedPage.m
//  Raider Center
//
//  Created by Kevin Sirius Yang on 2/1/16.
//  Copyright © 2016 BaylorDEV. All rights reserved.
//

#import "ViewController.h"
#import "FeedModel.h"
#import "FeedUser.h"
#import <MJRefresh/MJRefresh.h>
#import "FeedPageViewController.h"


@interface FeedPage


@property (nonatomic, assign) NSInteger num;

@end

@implementation FeedPage
- (void)viewDidLoad {
    [super viewDidLoad];
    
    tableView = 
    
    tableview.register(UINib(nibname:"FeedCell"), forCellReuseIdentifier: cellIdentifier)
    [self putFeedCell]
    //Nick work on the auto check before login
    [self setupRefresh];
    
}
//PULL DOWN TO REFRESH VIEW
-(void)setupRefresh {
    static BOOL firstStart = YES;
    __weak FeedTableViewController *weakSelf = self;
    self.tableView.header = [MJRefreshHeader headerWithRefreshingBlock:^{
        int timeLimit = 3.5;
        if(firstStart)
        {
            firstStart = NO;
            timeLimit = 0;
        }
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(timeLimit * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [weakSelf.tableView.header endRefreshing];
            self.num += 15;
            [self.tableView reloadData];
        });
    }];
    
    [self.tableView.header beginRefreshing];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)putFeedCell {
    if (UITableViewCell = nil)
    {
        cell = FeedCell ()
    }
}
/*
- (NSInteger)numberOfSectrionsInFeedTable:(UITableView *) tableView {
   return self.num;
}

- (NSInteger)tableView:(UITableView *) tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndex:(NSIndexPath *)indexPath {
//    return 44.0;
//}

//-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
//    return 10.0;
//}

//- (UITableViewCell *)tableView:(UITableView *)tableView cellsAtIndex:(NSIndexPath *)indexPath {
//    UITableViewCell *feed = [tableView dequeueReusableCellWithIdentifier:@"feed" forIndexPath:indexPath];
//    if(!feed) {
//        feed = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"feed"];
    
//}
    //SHOW FEED
    //INSERT YOUR CODE ABOUT RETRIVE FEED FROM SERVER AND PUT THE METHOD INTO THE NEXT LINE
    //feed.textLabel.text = [NSString stringWithFormat:@"TEST",(long)indexPath.section];
//    feed.backgroundColor = [UIColor WhiteColor];
//    return feed;
//}

//-(void)tableView:(UITableVIew *)tableView actionSelectRowAtIndex:(NSIndexPath *)indexPath {
//    UIViewController *vc = [[UIStoryboard storyboardWithName:@"FeedPage" bundle:nil]
//                            instantiateViewControllerWithIdentifier:@"FeedPageViewController" ];
//    [self.navigationController pushViewController:vc animated:YES];
//}


//- (UITableViewCell *)




//- (void)CheckBeforeCatch {
//    if (userIsLoggedIn != nil){
        
//    }
//}
 
 */
@end
