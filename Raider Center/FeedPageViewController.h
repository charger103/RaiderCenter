//
//  FeedPage.h
//  Raider Center
//
//  Created by Kevin Sirius Yang on 2/1/16.
//  Copyright © 2016 BaylorDEV. All rights reserved.
//
#import <UIKit/UIKit.h>


/////FeedPage///////
@interface FeedPage : UIViewController {
    
    
    
    ///////UIVARIABLE/////
    
    
    
    UIView *FeedPage;
    UIImage *TeacherImage;
    UILabel *FeedTime;
    UILabel *FeedContent;
    UIImage *ContentBox;
    UILabel *TeacherName;
    
  
    
    
    
    
    /////SERVERDATA//////
    
    
    
    NSString *GetTeacherImageLink;
    UIAlertController *UIAlertController;
    NSString *LoginedUserName;
    NSString *FeedContentForNow;
    NSString *GetFeedTime;
    NSString *NumberOfFeedEachTeacher;
    NSString *NumberOfFeedTotal;
    
    //////CLIENTSTATUS////////
    BOOL NeedToReLogin;
    NSString *UserNowLogined;
   

}