//
//  CCButton.h
//  CCCustomChatModule
//
//  Created by guxiangyun on 2018/8/15.
//

#import <UIKit/UIKit.h>

@interface CCButton : UIButton

-(void)addCCButtonToView:(UIView *)view action:(void (^)(void))action;

@end
