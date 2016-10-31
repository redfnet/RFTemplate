//
//  RFTemplate.h
//  RFTemplate
//
//  Created by Sneed, Brandon on 10/30/16.
//  Copyright © 2016 Redf. All rights reserved.
//

#import <Foundation/Foundation.h>

#if TARGET_OS_MAC && !TARGET_OS_IPHONE
#import <Cocoa/Cocoa.h>
#elif TARGET_OS_IPHONE
#import <UIKit/UIKit.h>
#endif

//! Project version number for RFTemplate.
FOUNDATION_EXPORT double RFTemplateVersionNumber;

//! Project version string for RFTemplate.
FOUNDATION_EXPORT const unsigned char RFTemplateVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <RFTemplate/PublicHeader.h>


