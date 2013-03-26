//
//  PlaceArray.m
//  TravelInXiamen
//
//  Created by 林志利 on 13-3-26.
//  Copyright (c) 2013年 林志利. All rights reserved.
//

#import "PlaceArray.h"
#import "Constant.h"
@implementation PlaceArray
@synthesize placesArray = _placesArray;
@synthesize imagesArray = _imagesArray;
- (id) initWithArray
{
    if (self = [super init])
    {
        _placesArray = [[NSMutableArray alloc] initWithObjects:@"南普陀寺",@"厦门大学",@"白城海滩",@"胡里山炮台",@"音乐广场",@"音乐餐厅",@"曾错垵",@"台湾民俗村",@"景州乐园",@"椰风寨",@"观音山", nil];
        _imagesArray = [[NSMutableArray alloc] init];
        for (int i = 1; i <= IMAGE_COUNT; i++) {
            [_imagesArray addObject:[UIImage imageNamed:[NSString stringWithFormat:@"small_%d@2x.jpg",i]]];
        }
    }
    return self;
}

+ (id)initWithArrayMethod
{
    return [[self alloc]initWithArray];
}

- (void) dealloc
{
    [_placesArray release];
    [_imagesArray release];
    [super dealloc];
}
@end
