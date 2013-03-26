//
//  ViewController.m
//  TravelInXiamen
//
//  Created by 林志利 on 13-3-26.
//  Copyright (c) 2013年 林志利. All rights reserved.
//

#import "ViewController.h"
#import "NanputuosiViewController.h"
#import "Constant.h"
#import "AppDelegate.h"
@interface ViewController ()

@end

@implementation ViewController
@synthesize placeArray = _placeArray;
@synthesize placeNameTableView = _placeNameTableView;

- (void)viewDidLoad
{
    self.title = Navigation_Index;
    _placeNameTableView.showsVerticalScrollIndicator = NO;
    _placeArray = [PlaceArray initWithArrayMethod];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [_placeNameTableView release];
    [_placeArray release];
    [super dealloc];
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_placeArray.placesArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
        //显示地名
        cell.textLabel.text = [_placeArray.placesArray objectAtIndex:[indexPath row]];
        cell.imageView.image = [_placeArray.imagesArray objectAtIndex:[indexPath row]];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
    
    // Configure the cell...
    
    return cell;
}

/*
 // Override to support conditional editing of the table view.
 - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the specified item to be editable.
 return YES;
 }
 */

/*
 // Override to support editing the table view.
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
 {
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 // Delete the row from the data source
 [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
 }
 else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }
 }
 */

/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
 {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    //南普陀寺
    switch ([indexPath row]) {
        case Nan_putuosi :
        {
//            AppDelegate *delegate = [[UIApplication sharedApplication] delegate];
            
            NanputuosiViewController *nptsViewController = [[NanputuosiViewController alloc] initWithNibName:@"NanputuosiViewController" bundle:nil];
            [self.navigationController pushViewController:nptsViewController animated:YES];
            [nptsViewController release];            
            break;
        }
        case Xiamen_Daxue:
            break;
        case Baicheng_Haitan:
            break;
        case Hulishan_Paotai:
            break;
        case Yinyue_Guangchang:
            break;
        case Zengcuoan:
            break;
        case Taiwan_Minsucun:
            break;
        case Jingzhou_Leyuan:
            break;

        case Yefengzhai:
            break;

        case Guanyinshan:
            break;
            
        default:
            break;
    }
}
@end
