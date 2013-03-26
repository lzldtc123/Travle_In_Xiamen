//
//  ViewController.h
//  TravelInXiamen
//
//  Created by 林志利 on 13-3-26.
//  Copyright (c) 2013年 林志利. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PlaceArray.h"


@interface ViewController : UIViewController<UITableViewDataSource,UITableViewDelegate,UIApplicationDelegate>
//大景点的地名
@property (retain, nonatomic) IBOutlet UITableView *placeNameTableView;
@property (retain ,nonatomic) PlaceArray *placeArray;
@end
