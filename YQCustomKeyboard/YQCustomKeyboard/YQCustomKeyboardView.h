//
//  YQCustomKeyboardView.h
//  YQCustomKeyboard
//
//  Created by 杨清 on 2018/8/8.
//  Copyright © 2018年 深圳市前海硕极科技有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, YQCustomKeyboardViewType) {
    YQCustomKeyboardViewTypeDefault     = 0,
    YQCustomKeyboardViewTypeCarnumber   = 1
};

@protocol YQCustomKeyboardViewDelegate <NSObject>
@required
- (void)customKeyboardInputKey:(NSString *)key;
- (void)customKeyboardDeleteKey;
@end


@interface YQCustomKeyboardView : UIView

@property (weak, nonatomic) id <YQCustomKeyboardViewDelegate> delegate;

+ (instancetype)keyboardWithType:(YQCustomKeyboardViewType)keyboardType delegate:(id <YQCustomKeyboardViewDelegate>)delegate;

@end
