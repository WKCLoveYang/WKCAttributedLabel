//
//  WKCAttributedLabel.h
//  AACD
//
//  Created by wkcloveYang on 2020/5/28.
//  Copyright © 2020 wkcloveYang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WKCAttributedDefine.h"

/// 暂时不能处理url的点击
@interface WKCAttributedLabel : UILabel

- (void)addAttributedType:(WKCAttributedType)type
                    value:(id)value;

- (void)addAttributedType:(WKCAttributedType)type
                    value:(id)value
                subString:(NSString *)subString;

- (void)reloadAttributeds;

@end

