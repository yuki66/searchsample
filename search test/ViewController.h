//
//  ViewController.h
//  search test
//
//  Created by YUKIKO HARADA on 2015/05/08.
//  Copyright (c) 2015年 yuki66. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
<UITextFieldDelegate>
{
    IBOutlet UITextField *searchTextField;//検索窓
    IBOutlet UILabel *resultLabel;//結果表示
    
    NSArray *dataArray;
}
-(IBAction) search;

@end

