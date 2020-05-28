//
//  WKCAttributedTextView.h
//  AACD
//
//  Created by wkcloveYang on 2020/5/28.
//  Copyright © 2020 wkcloveYang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WKCAttributedDefine.h"



@interface WKCAttributedTextView : UITextView

- (void)addAttributedType:(WKCAttributedType)type
                    value:(id)value;

- (void)addAttributedType:(WKCAttributedType)type
                    value:(id)value
                subString:(NSString *)subString;


@end

