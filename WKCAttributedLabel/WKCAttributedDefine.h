//
//  WKCAttributedDefine.h
//  AACD
//
//  Created by wkcloveYang on 2020/5/28.
//  Copyright © 2020 wkcloveYang. All rights reserved.
//

#import <UIKit/UIKit.h>



/// 富文本类型
/// @enum WKCAttributedTypeFont           字体, value是UIFont
/// @enum WKCAttributedTypeColor          字体颜色, value是UIColor
/// @enum WKCAttributedTypeKern           字间距, value是NSNumber
/// @enum WKCAttributedTypeLinespace      行间距, value是NSNumber
/// @enum WKCAttributedTypeStrikeline     删除线, value是NSUnderlineStyle
/// @enum WKCAttributedTypeStrikecolor    删除线颜色, value是UIColor
/// @enum WKCAttributedTypeUnderline      下划线, value是NSUnderlineStyle
/// @enum WKCAttributedTypeUnderlinecolor 下划线颜色, value是UIColor
/// @enum WKCAttributedTypeStrokewidth    文字描边, value是NSNumber
/// @enum WKCAttributedTypeStrokcolor     文字描边颜色, value是UIColor
/// @enum WKCAttributedTypeShadow         文字阴影, value是NSShadow
/// @enum WKCAttributedTypeObliqueness    斜体, value是NSNumber
/// @enum WKCAttributedTypeExpansion      扁平, value是NSNumber
/// @enum WKCAttributedTypeUrlLink        url, value是NSURL或NSString
typedef NS_ENUM(NSInteger, WKCAttributedType) {
    WKCAttributedTypeFont           = 0,
    WKCAttributedTypeColor          = 1,
    WKCAttributedTypeKern           = 2,
    WKCAttributedTypeLinespace      = 3,
    WKCAttributedTypeStrikeline     = 4,
    WKCAttributedTypeStrikecolor    = 5,
    WKCAttributedTypeUnderline      = 6,
    WKCAttributedTypeUnderlinecolor = 7,
    WKCAttributedTypeStrokewidth    = 8,
    WKCAttributedTypeStrokcolor     = 9,
    WKCAttributedTypeShadow         = 10,
    WKCAttributedTypeObliqueness    = 11,
    WKCAttributedTypeExpansion      = 12,
    WKCAttributedTypeUrlLink        = 13
};
