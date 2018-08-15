//
//  CCButton.m
//  CCCustomChatModule
//
//  Created by guxiangyun on 2018/8/15.
//

#import "CCButton.h"

@interface CCButton ()
@property (nonatomic, copy)void (^ClickBlock)(void);
@end
@implementation CCButton

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(void)addCCButtonToView:(UIView *)view action:(void (^)(void))action
{
    UIButton *testButton = [[UIButton alloc] initWithFrame:CGRectMake(50, 50, 50, 50)];
    testButton.backgroundColor = [UIColor redColor];
    [testButton addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
    [view addSubview:testButton];
    self.ClickBlock = action;
}
- (void)click:(UIButton *)sender {
    if (self.ClickBlock) {
        self.ClickBlock();
    }
}
@end
