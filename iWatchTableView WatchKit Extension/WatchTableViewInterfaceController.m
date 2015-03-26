//
//  WatchTableViewInterfaceController.m
//  iWatchTableView
//
//  Created by Vinod Vishwakarma on 26/03/15.
//  Copyright (c) 2015 Vinod Vishwakarma. All rights reserved.
//

#import "WatchTableViewInterfaceController.h"


@interface WatchTableViewInterfaceController() {

  
}

@end


@implementation WatchTableViewInterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    
    // Configure interface objects here.
    
    [self initializeTableViewWithData];
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}


- (void)initializeTableViewWithData {
    
    self.techNameArray = @[@"Baas", @"Paas", @"iOS", @"Mac", @"iWatch"];
    
    [self.interfaceTableView setNumberOfRows:self.techNameArray.count withRowType:@"default"];
    
    [self.techNameArray enumerateObjectsUsingBlock:^(NSString *techName, NSUInteger idx, BOOL *stop) {
        
        CustomTableViewCell *tableRow = [self.interfaceTableView rowControllerAtIndex:idx];
        
        [tableRow.nameLabel setText:techName];
        
    }];
    
}

@end



