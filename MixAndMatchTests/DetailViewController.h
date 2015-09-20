//
//  DetailViewController.h
//  MixAndMatchTests
//
//  Created by Maksym Grebenets on 20/09/2015.
//  Copyright (c) 2015 Maksym Grebenets. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

