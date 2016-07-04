

#import "UITextField+Extension.h"

@implementation UITextField (Extension)
/** 通过这个属性名，就可以修改textField内部的占位文字颜色 */
static NSString * const placeholderColorKeyPath = @"placeholderLabel.textColor";

/**
 *  设置占位文字颜色
 */
- (void)setplaceholderColor:(UIColor *)placeholderColor
{
    // 这3行代码的作用：1> 保证创建出placeholderLabel，2> 保留曾经设置过的占位文字
    NSString *placeholder = self.placeholder;
    self.placeholder = @" ";
    self.placeholder = placeholder;
    
    // 处理xmg_placeholderColor为nil的情况：如果是nil，恢复成默认的占位文字颜色
    if (placeholderColor == nil) {
        placeholderColor = [UIColor colorWithRed:0 green:0 blue:0.0980392 alpha:0.22];
    }
    
    // 设置占位文字颜色
    [self setValue:placeholderColor forKeyPath:placeholderColorKeyPath];
}

/**
 *  获得占位文字颜色
 */
- (UIColor *)placeholderColor
{
    return [self valueForKeyPath:placeholderColorKeyPath];
}

@end
