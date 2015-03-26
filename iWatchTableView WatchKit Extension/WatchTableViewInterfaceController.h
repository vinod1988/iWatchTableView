//
//  WatchTableViewInterfaceController.h
//  iWatchTableView
//
//  Created by Vinod Vishwakarma on 26/03/15.
//  Copyright (c) 2015 Vinod Vishwakarma. All rights reserved.
//

#import <WatchKit/WatchKit.h>
#import <Foundation/Foundation.h>
#import "CustomTableViewCell.h"

@interface WatchTableViewInterfaceController : WKInterfaceController {

    
}

@property (weak, nonatomic) IBOutlet WKInterfaceTable *interfaceTableView;
@property (strong , nonatomic) NSArray *techNameArray;

@end
