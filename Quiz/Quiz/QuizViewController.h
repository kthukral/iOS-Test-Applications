//
//  QuizViewController.h
//  Quiz
//
//  Created by Karan Thukral on 2013-04-29.
//  Copyright (c) 2013 Karan Thukral. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QuizViewController : UIViewController

{
    //The modal objects : Arrays to hold the questions and answers
    NSMutableArray *questions;
    NSMutableArray *answers;
    
    //The view objects
    IBOutlet UILabel *questionField;
    IBOutlet UILabel *answerField;
}

- (IBAction)showQuestion:(id)sender;
- (IBAction)showAnswer:(id)sender;

@end
