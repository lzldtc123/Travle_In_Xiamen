//
//  placeArray.h
//  TravelInXiamen
//
//  Created by 林志利 on 13-3-26.
//  Copyright (c) 2013年 林志利. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PlaceArray : NSObject
@property (nonatomic,retain) NSMutableArray *placesArray;
@property (nonatomic,retain) NSMutableArray *imagesArray;
- (id) initWithArray;
+ (id) initWithArrayMethod;
@end
