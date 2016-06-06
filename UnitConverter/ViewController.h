//
//  ViewController.h
//  UnitConverter
//
//  Created by Sharat Virunchipuram on 6/5/16.
//  Copyright © 2016 Sharat Virunchipuram. All rights reserved.
//

#import <UIKit/UIKit.h>

/*
@interface ViewController : UIViewController

@end
*/

@interface ViewController : UIViewController <UITextFieldDelegate> {
    IBOutlet UILabel *outputField;
    IBOutlet UITextField *inputField;
}
@end

