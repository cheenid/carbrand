//
//  ViewController.m
//  汽车品牌
//
//  Created by 王为 on 17/2/28.
//  Copyright © 2017年 王为. All rights reserved.
//

#import "ViewController.h"
#import "GroupModel.h"
#import "CarModel.h"


@interface ViewController ()<UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic, strong)NSArray *groupArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.dataSource = self;
    self.tableView.rowHeight = 60;
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return self.groupArray.count;
//    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    GroupModel *model = self.groupArray[section];
    return model.cars.count;
//    return 3;
}

-(BOOL)prefersStatusBarHidden{
    return true;
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    
    NSString *title = ((GroupModel *)self.groupArray[section]).title;
    return title;
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    GroupModel *group = self.groupArray[indexPath.section];
    CarModel *car = group.cars[indexPath.row];
    
    static NSString *ID = @"wangwei";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    
    if(!cell){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }
    
    cell.imageView.image = [UIImage imageNamed:car.icon];
    cell.textLabel.text = car.name;
    
    return cell;
}

-(NSArray<NSString *> *)sectionIndexTitlesForTableView:(UITableView *)tableView{
    return [self.groupArray valueForKey:@"title"];
}




-(NSArray *)groupArray{
    if(!_groupArray){
        NSString *path = [[NSBundle mainBundle] pathForResource:@"cars_total.plist" ofType:nil];
        NSArray *array = [[NSArray alloc]initWithContentsOfFile:path];
        
        NSMutableArray *modelArray = [NSMutableArray array];
        
        for(NSDictionary *groupDict in array){
            GroupModel *model = [[GroupModel alloc]initWithDict:groupDict];
            [modelArray addObject:model];
        }
        
        _groupArray = modelArray;
    }
    
    return _groupArray;
}

@end
