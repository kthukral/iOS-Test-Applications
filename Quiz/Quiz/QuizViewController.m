//
//  QuizViewController.m
//  Quiz
//
//  Created by Karan Thukral on 2013-04-29.
//  Copyright (c) 2013 Karan Thukral. All rights reserved.
//

#import "QuizViewController.h"

@interface QuizViewController ()

{
    int currentQuestionIndex;
}

@end

@implementation QuizViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    
    //call the init method implemented by the superclass
    self = [super initWithNibName:nibBundleOrNil bundle:nibBundleOrNil];
    if (self){
        //create two arrays and make pointers point to them
        questions = [[NSMutableArray alloc]init];
        answers = [[NSMutableArray alloc]init];
        
        //Add questions and answers to the arrays
        [questions addObject:@"What is 7+7?"];
        [answers addObject:@"14"];
        
        [questions addObject:@"What is the capital of Vermont?"];
        [answers addObject:@"Montpelier"];
        
        [questions addObject:@"From what is cognac made?"];
        [answers addObject:@"Grapes"];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    questionField.text = @" ";
    answerField.text = @"???????";
    currentQuestionIndex = -1;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showQuestion:(id)sender {
    //Step to the next question
    currentQuestionIndex ++;
    if(currentQuestionIndex == [questions count]){
        currentQuestionIndex = 0;
    }
    
    // Get the string at index in the questions array
    NSString *question = [questions objectAtIndex:currentQuestionIndex];
    
    //Log the string to the console
    NSLog(@"displaying question: %@",question);
    
    //Display the string in the question field
    [questionField setText:question];
    
    //Clear the answer field
    [answerField setText:@"??????"];
    
}

- (IBAction)showAnswer:(id)sender {
    
    //What is the answer to the current question
    NSString *answer = [answers objectAtIndex:currentQuestionIndex];
    
    //Display in the answer field
    [answerField setText:answer];
}

@end
