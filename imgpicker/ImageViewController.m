//
//  ImageViewController.m
//  imgpicker
//
//  Created by Sreenika Jaihan on 31/05/16.
//  Copyright © 2016 Sreenika Jaihan. All rights reserved.
//

#import "ImageViewController.h"

@interface ImageViewController ()

@end

@implementation ImageViewController
@synthesize tableview,imageview;

- (void)viewDidLoad {
    [self.tableview registerNib:[UINib nibWithNibName:@"CustomTableViewCell" bundle:nil] forCellReuseIdentifier:@"cell"];
    
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellidentifier = @"cell";
    CustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellidentifier];
    if (cell == nil) {
        cell = [[CustomTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellidentifier];
        
    }
    imageview = [[UIImageView alloc]init];
    
    imageview.frame = CGRectMake(8, 8, 139, 76);
    imageview.image = [UIImage imageNamed:@"1.jpg"];

    [cell addSubview:imageview];
    cell.lableobj.text = @"chakri";
    [cell.btn setTitle:@"Action" forState:UIControlStateNormal];
    [cell.btn addTarget:self action:@selector(btnpressed) forControlEvents:UIControlEventTouchUpInside];
    [cell.btn setTag:indexPath.row +100];
    return cell;
}

-(void)btnpressed{
    
    UIImagePickerController * picker = [[UIImagePickerController alloc]init];
    picker.delegate = self;
    picker.allowsEditing = YES;
    picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    [self presentViewController:picker animated:YES completion:nil];
    
    
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    
    UIImage *chosenImage = info[UIImagePickerControllerEditedImage];
    
    imageview = [[UIImageView alloc]init];
    imageview.frame = CGRectMake(8, 8, 139, 76);
    [self.view addSubview:imageview];
    imageview.image = chosenImage;
    
    [picker dismissViewControllerAnimated:YES completion:NULL];
    
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    return 90.0;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
