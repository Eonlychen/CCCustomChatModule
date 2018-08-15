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

-(void)addAction:(void (^)(void))action
{
    self.backgroundColor = [UIColor redColor];
    [self addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];

    self.ClickBlock = action;
}
- (void)click:(UIButton *)sender {
    if (self.ClickBlock) {
        self.ClickBlock();
    }
}
@end
