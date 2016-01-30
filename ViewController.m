//
//  ViewController.m
//  2016 RUSH Scouting
//
//  Created by Team RUSH 2 on 1/11/16.
//  Copyright © 2016 FIRST Team RUSH 27 Robotics. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

NSArray *_pickerviewarray;

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    lblAutoPicker.text =@"None";
    picAutoDefense.delegate = self;
    picAutoDefense.dataSource = self;
    
    _pickerviewarray = @[@"None",@"Gate",@"Seesaw",@"Moat",@"Ramparts",@"Drawbridge",@"Sally Door",@"Rock Wall",@"Rough Terrain",@"Low Bar"];
    
    CALayer *btnLayer = [roundButton layer];
    [btnLayer setMasksToBounds:YES];
    [btnLayer setCornerRadius:5.0f];
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{

    NSString *defenseSelected = [_pickerviewarray objectAtIndex:row];
    _lblAutoPickers.text = defenseSelected;
    
    
}
-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    
    return _pickerviewarray.count;
//    NSString *SelectedTile = [self. objectAtIndex:[self.picAutoDefense selectedRowInComponent:0]];
//    NSLog(@"%@", SelectedTile);
}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 1;
}

-(NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    return _pickerviewarray[row];
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



// Don't touch what is above


// Chaning of Match Number Text
- (IBAction)didChangeMatchnum:(UIStepper *)sender {
    int val = sender.value;
    _LblMatchnum.text = [NSString stringWithFormat:@"Match #:%d",val];
}

//



//The following three use the same three conditions in order to enable / disable the SUBMIT button if you change the values of any of the three catagories that have been selected.
- (IBAction)didChangeTeamnum:(UITextField *)sender {
   
    if ([[sender text] length] > 4) {
        [sender setText:[[sender text] substringToIndex:4]];
        
    }
        if ([_TxtTeamnum.text length]!=0 & [_TxtScoutnum.text length]!=0 & _sgmStartLocation.selectedSegmentIndex!= -1 ) {
        [_Submit setEnabled:YES];
    }
        else {
            [_Submit setEnabled:NO];
        }

    }
- (IBAction)didStartLocation:(UISegmentedControl *)sender {
    if ([_TxtTeamnum.text length]!=0 & [_TxtScoutnum.text length]!=0 & _sgmStartLocation.selectedSegmentIndex!= -1 ) {
        [_Submit setEnabled:YES];
        }
        else {
            [_Submit setEnabled:NO];
        }
    
    }
- (IBAction)didScouterNumber:(UITextField *)sender {
    if ([_TxtTeamnum.text length]!=0 & [_TxtScoutnum.text length]!=0 & _sgmStartLocation.selectedSegmentIndex!= -1 ) {
        [_Submit setEnabled:YES];
        }
        else {
                [_Submit setEnabled:NO];
            }
    }
// See above for context

// For changing the lables next to the steppers
- (IBAction)didScoreLow:(UIStepper *)sender {
    int val = sender.value;
    _lblLowGoalScore.text = [NSString stringWithFormat:@"#:%d",val];
    
}
- (IBAction)didScoreHigh:(UIStepper *)sender {
    int val = sender.value;
_lblHighGoalScore.text = [NSString stringWithFormat:@"#:%d",val];
}

// See above

// To enable / disable the selection of Scoring high or low in auton
- (IBAction)didAttemptShot:(UISegmentedControl *)sender {
    if (_sgmShotAttempted.selectedSegmentIndex == 1)
    {
        [_sgmShotHigh setEnabled:YES];
        [_sgmShotLow setEnabled:YES];
    }
    else {
        [_sgmShotHigh setEnabled:NO];
        [_sgmShotLow setEnabled:NO];
        _sgmShotHigh.selectedSegmentIndex = 0;
        _sgmShotLow.selectedSegmentIndex = 0;
        
    }
}
// See above
- (IBAction)didChangeDefense:(UISegmentedControl *)sender {
if (_sgmDefence.selectedSegmentIndex == 1 )
{
    [_sgmDefenceSkill setEnabled:YES];
}
else
    [_sgmDefenceSkill setEnabled:NO];
    _sgmDefenceSkill.selectedSegmentIndex = -1;
}


// Gate
- (IBAction)didChangeGate:(UIStepper *)sender {
  int val = sender.value;
    _lblGate.text = [NSString stringWithFormat:@"#:%d",val];
if (sender.value != 0)
{
    [_sgmGate setEnabled:YES forSegmentAtIndex:1];
    [_sgmGate setEnabled:YES forSegmentAtIndex:2];
}
    else {
        [_sgmGate setEnabled:NO forSegmentAtIndex:1];
                [_sgmGate setEnabled:NO forSegmentAtIndex:2];
        _sgmGate.selectedSegmentIndex = -1;
    
    }
}

// Tippy Ramps
- (IBAction)didChangeTippyRamps:(UIStepper *)sender {
  int val = sender.value;
    _lblTippyRamp.text = [NSString stringWithFormat:@"#:%d",val];
if (sender.value != 0)
{
    [_sgmTippyRamp setEnabled:YES forSegmentAtIndex:1];
        [_sgmTippyRamp setEnabled:YES forSegmentAtIndex:2];
}
else {
    [_sgmTippyRamp setEnabled:NO forSegmentAtIndex:1];
        [_sgmTippyRamp setEnabled:NO forSegmentAtIndex:2];
    _sgmTippyRamp.selectedSegmentIndex = -1;
}}
// Moat
- (IBAction)didChangeMoat:(UIStepper *)sender {
  int val = sender.value;
    _lblMoat.text = [NSString stringWithFormat:@"#:%d",val];
    if (sender.value != 0) {
        [_sgmMoat setEnabled:YES forSegmentAtIndex:1];
                [_sgmMoat setEnabled:YES forSegmentAtIndex:2];
    }
    else {
        
        [_sgmMoat setEnabled:NO forSegmentAtIndex:1];
                [_sgmMoat setEnabled:NO forSegmentAtIndex:2];
        _sgmMoat.selectedSegmentIndex = -1;
    }
}
// Ramparts
- (IBAction)didChangeRamparts:(UIStepper *)sender {
  int val = sender.value;
    _lblRamparts.text = [NSString stringWithFormat:@"#:%d",val];
    if (sender.value != 0) {
        [_sgmRamparts setEnabled:YES forSegmentAtIndex:1];
                [_sgmRamparts setEnabled:YES forSegmentAtIndex:2];
    }
    else {
        
        [_sgmRamparts setEnabled:NO forSegmentAtIndex:1];
                [_sgmRamparts setEnabled:NO forSegmentAtIndex:2];
        _sgmRamparts.selectedSegmentIndex = -1;
    }
}
// Draw Bridge
- (IBAction)didChangeDrawBridge:(UIStepper *)sender {
  int val = sender.value;
    _lblDrawBridge.text = [NSString stringWithFormat:@"#:%d",val];
    if (sender.value != 0) {
        [_sgmDrawBridge setEnabled:YES forSegmentAtIndex:1];
                [_sgmDrawBridge setEnabled:YES forSegmentAtIndex:2];
        
    }
    else {
        
        [_sgmDrawBridge setEnabled:NO forSegmentAtIndex:1];
                [_sgmDrawBridge setEnabled:NO forSegmentAtIndex:2];
        _sgmDrawBridge.selectedSegmentIndex = -1;
    }
}
// Sally Door
- (IBAction)didChangeSallyDoor:(UIStepper *)sender {
  int val = sender.value;
    _lblSallyDoor.text = [NSString stringWithFormat:@"#:%d",val];
    if (sender.value != 0) {
        [_sgmSallyDoor setEnabled:YES forSegmentAtIndex:1];
                [_sgmSallyDoor setEnabled:YES forSegmentAtIndex:2];
    }
    else {
        
        [_sgmSallyDoor setEnabled:NO forSegmentAtIndex:1];
                [_sgmSallyDoor setEnabled:NO forSegmentAtIndex:2];
        _sgmSallyDoor.selectedSegmentIndex = -1;
    }
}
// Rock Wall
- (IBAction)didChangeRockWall:(UIStepper *)sender {
  int val = sender.value;
    _lblRockWall.text = [NSString stringWithFormat:@"#:%d",val];
    if (sender.value != 0) {
        [_sgmRockWall setEnabled:YES forSegmentAtIndex:1];
                [_sgmRockWall setEnabled:YES forSegmentAtIndex:2];
    }
    else {
        
        [_sgmRockWall setEnabled:NO forSegmentAtIndex:1];
                [_sgmRockWall setEnabled:NO forSegmentAtIndex:2];
        _sgmRockWall.selectedSegmentIndex = -1;
    }
}
// Rough Terrian
- (IBAction)didChangeRoughTerrian:(UIStepper *)sender {
  int val = sender.value;
    _lblRoughTerrian.text = [NSString stringWithFormat:@"#:%d",val];
    if (sender.value != 0) {
        [_sgmRoughTerrian setEnabled:YES forSegmentAtIndex:1];
        [_sgmRoughTerrian setEnabled:YES forSegmentAtIndex:2];
    }
    else
    {
        
        [_sgmRoughTerrian setEnabled:NO forSegmentAtIndex:1];
                [_sgmRoughTerrian setEnabled:NO forSegmentAtIndex:2];
        _sgmRoughTerrian.selectedSegmentIndex = -1;
    }
}
// Low Bar
- (IBAction)didChangeLowBar:(UIStepper *)sender {
  int val = sender.value;
   _lblLowbar.text = [NSString stringWithFormat:@"#:%d",val];
    if (sender.value != 0) {
                [_sgmLowBar setEnabled:YES forSegmentAtIndex:1];
                [_sgmLowBar setEnabled:YES forSegmentAtIndex:2];
    }
    else {
        
        [_sgmLowBar setEnabled:NO forSegmentAtIndex:1];
                [_sgmLowBar setEnabled:NO forSegmentAtIndex:2];
        _sgmLowBar.selectedSegmentIndex = -1;


    }
    
    
}
-(void)varibles {
    
    _bolDrawbridge.text = @"0";
    _bolGate.text = @"0";
    _bolSallyDoor.text = @"0";
    _bolLowBar.text = @"0";
    _bolMoat.text = @"0";
    _bolRamparts.text = @"0";
    
    _bolRockWall.text = @"0";
    _bolRoughTerrain.text = @"0";
    _bolSeesaw.text = @"0";
    if ([_lblAutoPickers.text  isEqualToString: @"Gate"])
    {
        _bolGate.text =@"1";
    }
    
    
    
   if ([_lblAutoPickers.text isEqualToString:@"Seesaw"])
    {
        _bolSeesaw.text =@"1";
    }
    
    
    
    if ([_lblAutoPickers.text  isEqualToString:@"Moat"])
    {
        _bolMoat.text =@"1";
    }
    
    if ([_lblAutoPickers.text isEqualToString:@"Ramparts"])
    {
        _bolRamparts.text =@"1";
    }
    
    if ([_lblAutoPickers.text isEqualToString:@"Drawbridge" ])
    {
        _bolDrawbridge.text =@"1";
    }
    if ([_lblAutoPickers.text isEqualToString:@"Sally Door"])
    {
        _bolSallyDoor.text =@"1";
        
    }
    if ([_lblAutoPickers.text isEqualToString:@"Rock Wall" ])
    {
        _bolRockWall.text =@"1";
    }
    if ([_lblAutoPickers.text isEqualToString:@"Rough Terrain"])
    {
        _bolRoughTerrain.text =@"1";
    }
    if ([_lblAutoPickers.text isEqualToString:@"Low Bar"])
    {
        _bolLowBar.text =@"1";
    }
    
}


- (IBAction)didSubmit:(UIButton *)sender {
    [self varibles];
    [self Save];
    [self NextMatch];
}

-(void) Save {
    
    
        // Saves the data in order of resultLine based on what we want in the code.
        int number = [_StpMatchnum value];
         NSString *resultLine = [NSString stringWithFormat:@"%i,%i,%@,%d,%d,%@,%@,%@,%@,%@,%@,%@,%@,%@,%@,%d,%d,%d,%f,%d,%f,%d,%f,%d,%f,%d,%f,%d,%f,%d,%f,%d,%f,%d,%f,%d,%f,%f,%d,%@,%d,%d,%d",
                                 [[NSNumber numberWithDouble:_StpMatchnum.value] intValue],
                                
                                 [_TxtTeamnum.text intValue],
                                
                                 [_sgmStartLocation titleForSegmentAtIndex:fmax(_sgmStartLocation.selectedSegmentIndex, 0)],
                    _sgmMovedToDefence.selectedSegmentIndex,
                                 _sgmCrossedDefence.selectedSegmentIndex,
                                 
                                 //auton
                                
                                 
                                 
                                 _bolGate.text,
                                 _bolDrawbridge.text,
                                 _bolSeesaw.text,
                                 _bolMoat.text,
                                 _bolRamparts.text,
                                 _bolDrawbridge.text,
                                 _bolSallyDoor.text,
                        
                                 _bolRockWall.text,
                                 _bolRoughTerrain.text,
                                 _bolLowBar.text,
                                 
                                 _sgmShotHigh.selectedSegmentIndex,
                                 _sgmShotLow.selectedSegmentIndex,
                                 _sgmShotAttempted.selectedSegmentIndex,
                                 // see above
                        
                                 //teleop defences
                                 _stpGate.value,
                                 _sgmGate.selectedSegmentIndex +1,
                                 
                                 _stpTippyRamps.value,
                                 _sgmTippyRamp.selectedSegmentIndex +1,
                                 
                                 _stpMoat.value,
                                 _sgmMoat.selectedSegmentIndex +1,
                                 
                                 _stpRamparts.value,
                                 _sgmRamparts.selectedSegmentIndex +1,
                                 
                                 _stpDrawBridge.value,
                                 _sgmDrawBridge.selectedSegmentIndex +1,
                                 
                                 _stpSallyDoor.value,
                                 _sgmSallyDoor.selectedSegmentIndex +1,
                                 
                                 _stpRockWall.value,
                                 _sgmRockWall.selectedSegmentIndex +1,
                                 
                                 _stpRoughTerrian.value,
                                 _sgmRoughTerrian.selectedSegmentIndex +1,
                                 
                                 _stpLowbar.value,
                                 _sgmLowBar.selectedSegmentIndex +1,
                                 
                                 _stpHighGoalScore.value,
                                 _stpLowGoalScore.value,
                                 _sgmHang.selectedSegmentIndex,
                                [_sgmStrategy titleForSegmentAtIndex:fmax(_sgmStrategy.selectedSegmentIndex,-1)],
                                 _sgmDefence.selectedSegmentIndex,
                                 _sgmDefenceSkill.selectedSegmentIndex + 1,
                                 _sgmDriverSkill.selectedSegmentIndex +1
                                 
                   
                                 
                                 
                                 
                                 
                                 
                                 
                                 
                                 
                                 
                                 
                                 
                                 
                                 
                                 ];
    
    
        // Code for saving, mainly around the CSV part
        NSString *docPath= [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)objectAtIndex:0];
        NSString *fileName=@"";
        NSString *deviceName = [[UIDevice currentDevice] name];
        if(number<10){
            fileName =[NSString stringWithFormat:@"00%i_%@_%@.csv",
                       [[NSNumber numberWithDouble:_StpMatchnum.value] intValue], deviceName, _TxtScoutnum.text];
        }
        else if(number/10<10){
            fileName =[NSString stringWithFormat:@"0%i_%@_%@.csv",
                       [[NSNumber numberWithDouble:_StpMatchnum.value] intValue], deviceName, _TxtScoutnum.text];
        }
        else {
            fileName =[NSString stringWithFormat:@"%i_%@_%@.csv",
                       [[NSNumber numberWithDouble:_StpMatchnum.value] intValue], deviceName, _TxtScoutnum.text];
        }
        NSString *fullFilePath=[docPath stringByAppendingPathComponent:fileName];
        if (![[NSFileManager defaultManager] fileExistsAtPath:docPath]) {
            [[NSFileManager defaultManager]
             createFileAtPath:fileName contents:nil attributes:nil];
        }
        [resultLine writeToFile:fullFilePath atomically:YES encoding:NSUTF8StringEncoding error: nil];
        
        
    }

-(void) NextMatch
{
    // Next Match and Team Number
    
    [_StpMatchnum setValue:_StpMatchnum.value +1];
    [_TxtTeamnum setText:@""];
    
    // Auton
    
    [_sgmStartLocation setSelectedSegmentIndex:UISegmentedControlNoSegment];
    // Add auton Defence here
    _sgmLowBar.selectedSegmentIndex = 0;
    _sgmRockWall.selectedSegmentIndex = 0;
    _sgmMoat.selectedSegmentIndex = 0;
    _sgmRamparts.selectedSegmentIndex = 0;
    _sgmRoughTerrian.selectedSegmentIndex = 0;
    _sgmSallyDoor.selectedSegmentIndex = 0;
    _sgmShotAttempted.selectedSegmentIndex = 0;
    _sgmShotHigh.selectedSegmentIndex = 0;
    _sgmShotLow.selectedSegmentIndex = 0;
    _sgmStrategy.selectedSegmentIndex = 0;
    _sgmTippyRamp.selectedSegmentIndex = 0;
    _sgmCrossedDefence.selectedSegmentIndex = 0;
    _sgmDefence.selectedSegmentIndex = 0;
    _sgmDrawBridge.selectedSegmentIndex = 0;
    _sgmGate.selectedSegmentIndex = 0;
    _sgmHang.selectedSegmentIndex = 0;
    _sgmMovedToDefence.selectedSegmentIndex = 0;
    //
    _stpDrawBridge.value = 0;
    _stpGate.value = 0;
    _stpHighGoalScore.value = 0;
    _stpLowbar.value = 0;
    _stpLowGoalScore.value = 0;
    _stpMoat.value = 0;
    _stpRamparts.value = 0;
    _stpRockWall.value = 0;
    _stpRoughTerrian.value = 0;
    _stpSallyDoor.value = 0;
    _stpTippyRamps.value = 0;
    //
    _sgmShotHigh.selectedSegmentIndex = 0;
    _sgmShotLow.selectedSegmentIndex = 0;
    _lblAutoPickers.text = @"None";
    //
    [_sgmDriverSkill setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [_sgmDefenceSkill  setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [self didScoreHigh:_stpHighGoalScore];
    [self didScoreLow:_stpLowGoalScore];
    [self didChangeDefense:_sgmDefence];
    [self didChangeDrawBridge:_stpDrawBridge];
    [self didChangeGate:_stpGate];
    [self didChangeLowBar:_stpLowbar];
    [self didChangeMoat:_stpMoat];
    [self didChangeRamparts:_stpRamparts];
    [self didChangeRockWall:_stpRockWall];
    [self didChangeRoughTerrian:_stpRoughTerrian];
    [self didChangeSallyDoor:_stpSallyDoor];
    [self didChangeTippyRamps:_stpTippyRamps];
    [self didChangeMatchnum:_StpMatchnum];
    [self didAttemptShot:_sgmShotAttempted];
    [self didAutoScoreHigh:_sgmShotHigh];
    [self didAutoScoreLow:_sgmShotLow];
    [self didMovetoDefense:_sgmMovedToDefence];
    [self didCrossDefense:_sgmCrossedDefence];
    [picAutoDefense reloadAllComponents];
    [picAutoDefense selectRow:0 inComponent:0 animated:YES];
}
- (IBAction)didCrossDefense:(UISegmentedControl *)sender {
    if (_sgmCrossedDefence.selectedSegmentIndex == 1) {
        
        [_sgmMovedToDefence setEnabled:NO];
        _sgmMovedToDefence.selectedSegmentIndex = 0;
        picAutoDefense.userInteractionEnabled = YES;

    }
    else {
        [_sgmMovedToDefence setEnabled:YES];
        picAutoDefense.userInteractionEnabled = NO;
        [picAutoDefense reloadAllComponents];
        [picAutoDefense selectRow:0 inComponent:0 animated:YES];

        }

}
- (IBAction)didMovetoDefense:(UISegmentedControl *)sender {
       if (_sgmMovedToDefence.selectedSegmentIndex ==1)
    {
        [_sgmCrossedDefence setEnabled:NO];
        _sgmCrossedDefence.selectedSegmentIndex = 0;
        picAutoDefense.userInteractionEnabled = NO;
        [picAutoDefense reloadAllComponents];
        [picAutoDefense selectRow:0 inComponent:0 animated:YES];
    }
    else {
        [_sgmCrossedDefence setEnabled:YES];
    }

}
- (IBAction)didAutoScoreHigh:(UISegmentedControl *)sender {
    

if (_sgmShotHigh.selectedSegmentIndex == 1)
{
    [_sgmShotLow setEnabled:NO];
    _sgmShotLow.selectedSegmentIndex = 0;
}
else{
    [_sgmShotLow setEnabled:YES
     ];}



}

-(IBAction)didAutoScoreLow:(UISegmentedControl *)sender{
        if (_sgmShotLow.selectedSegmentIndex == 1)
    {
        [_sgmShotHigh setEnabled:NO];
        _sgmShotHigh.selectedSegmentIndex=0;
    }
    else{
        [_sgmShotHigh setEnabled:YES];
    
    }
}


@end

