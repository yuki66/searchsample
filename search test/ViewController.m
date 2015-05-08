//
//  ViewController.m
//  search test
//
//  Created by YUKIKO HARADA on 2015/05/08.
//  Copyright (c) 2015年 yuki66. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    searchTextField.delegate = self;
    // TextFieldの処理をViewControllerに任せる
    dataArray = [NSArray arrayWithObjects:@"あいうえお",@"かきくけこ",@"さしすせそ",@"たちつてと",@"なにぬねの",@"はひふへほ",@"だだぢぢ",@"づでどん",@"あかさたなはだづ",nil];}
                 

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITextField Delegate
-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    //キーボードを閉じる
    [textField resignFirstResponder];
    return YES;
}
                 
#pragma mark - Private
 - (IBAction)search{
     //検索
     NSUInteger index = [dataArray indexOfObject:searchTextField.text];

     if(index != NSNotFound){
         resultLabel.text = dataArray[index];
     }else{
         resultLabel.text = @"見つかりませんでした";
     }
 }

@end
