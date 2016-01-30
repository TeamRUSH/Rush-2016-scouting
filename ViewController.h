//
//  ViewController.h
//  2016 RUSH Scouting
//
//  Created by Team RUSH 2 on 1/11/16.
//  Copyright © 2016 FIRST Team RUSH 27 Robotics. All rights reserved.
//

#import <UIKit/UIKit.h>


//  This is needed for the UIPickerview to work:   <UIPickerViewDelegate, UIPickerViewDataSource>
@interface ViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource> {
   
    

    __weak IBOutlet UIPickerView *lblAutoDefense;
// pickerview for auton defense
    __weak IBOutlet UIPickerView *picAutoDefense;
}


/*

 The following are all the connections between the Main.storyboard and this, the ViewController.h
 
 Every action that is needed is also here.

*/
// Match Number
    @property (weak, nonatomic) IBOutlet UILabel *LblMatchnum;
    @property (weak, nonatomic) IBOutlet UIStepper *StpMatchnum;
//      Match Change
- (IBAction)didChangeMatchnum:(UIStepper *)sender;

// Team Number
    @property (weak, nonatomic) IBOutlet UILabel *LblTeamnum;
    @property (weak, nonatomic) IBOutlet UITextField *TxtTeamnum;
// Team Number Change
- (IBAction)didChangeTeamnum:(UITextField *)sender;

// Scouter Number
    @property (weak, nonatomic) IBOutlet UILabel *LblScoutnum;
    @property (weak, nonatomic) IBOutlet UITextField *TxtScoutnum;
- (IBAction)didScouterNumber:(UITextField *)sender;

// Auton
    // Start Location
@property (weak, nonatomic) IBOutlet UISegmentedControl *sgmStartLocation;
- (IBAction)didStartLocation:(UISegmentedControl *)sender;


//      Moved to Defense
@property (weak, nonatomic) IBOutlet UISegmentedControl *sgmMovedToDefence;
- (IBAction)didMovetoDefense:(UISegmentedControl *)sender;

//      Attempted to Shoot during Auton
@property (weak, nonatomic) IBOutlet UISegmentedControl *sgmShotAttempted;
- (IBAction)didAttemptShot:(UISegmentedControl *)sender;


//      Scored high and Low respectively
@property (weak, nonatomic) IBOutlet UISegmentedControl *sgmShotHigh;
@property (weak, nonatomic) IBOutlet UISegmentedControl *sgmShotLow;
- (IBAction)didAutoScoreHigh:(UISegmentedControl *)sender;
- (IBAction)didAutoScoreLow:(UISegmentedControl *)sender;



//      Crossed a Defense during Auton
@property (weak, nonatomic) IBOutlet UISegmentedControl *sgmCrossedDefence;
- (IBAction)didCrossDefense:(UISegmentedControl *)sender;

// Defences In order for Teleop
// Gate
@property (weak, nonatomic) IBOutlet UIStepper *stpGate;
- (IBAction)didChangeGate:(UIStepper *)sender;
@property (weak, nonatomic) IBOutlet UILabel *lblGate;
@property (weak, nonatomic) IBOutlet UISegmentedControl *sgmGate;

// Tippy Ramps
@property (weak, nonatomic) IBOutlet UIStepper *stpTippyRamps;
- (IBAction)didChangeTippyRamps:(UIStepper *)sender;
@property (weak, nonatomic) IBOutlet UILabel *lblTippyRamp;
@property (weak, nonatomic) IBOutlet UISegmentedControl *sgmTippyRamp;

// Moat
@property (weak, nonatomic) IBOutlet UIStepper *stpMoat;
- (IBAction)didChangeMoat:(UIStepper *)sender;
@property (weak, nonatomic) IBOutlet UILabel *lblMoat;
@property (weak, nonatomic) IBOutlet UISegmentedControl *sgmMoat;

// Ramparts
@property (weak, nonatomic) IBOutlet UIStepper *stpRamparts;
- (IBAction)didChangeRamparts:(UIStepper *)sender;
@property (weak, nonatomic) IBOutlet UILabel *lblRamparts;
@property (weak, nonatomic) IBOutlet UISegmentedControl *sgmRamparts;

// Drawbridge
@property (weak, nonatomic) IBOutlet UIStepper *stpDrawBridge;
- (IBAction)didChangeDrawBridge:(UIStepper *)sender;
@property (weak, nonatomic) IBOutlet UILabel *lblDrawBridge;
@property (weak, nonatomic) IBOutlet UISegmentedControl *sgmDrawBridge;

// Sally Door
@property (weak, nonatomic) IBOutlet UIStepper *stpSallyDoor;
- (IBAction)didChangeSallyDoor:(UIStepper *)sender;
@property (weak, nonatomic) IBOutlet UILabel *lblSallyDoor;
@property (weak, nonatomic) IBOutlet UISegmentedControl *sgmSallyDoor;

// Rock Wall
@property (weak, nonatomic) IBOutlet UIStepper *stpRockWall;
- (IBAction)didChangeRockWall:(UIStepper *)sender;
@property (weak, nonatomic) IBOutlet UILabel *lblRockWall;
@property (weak, nonatomic) IBOutlet UISegmentedControl *sgmRockWall;

// Rough Terrian
@property (weak, nonatomic) IBOutlet UIStepper *stpRoughTerrian;
- (IBAction)didChangeRoughTerrian:(UIStepper *)sender;
@property (weak, nonatomic) IBOutlet UILabel *lblRoughTerrian;
@property (weak, nonatomic) IBOutlet UISegmentedControl *sgmRoughTerrian;

// Low Bar
@property (weak, nonatomic) IBOutlet UIStepper *stpLowbar;
- (IBAction)didChangeLowBar:(UIStepper *)sender;
@property (weak, nonatomic) IBOutlet UILabel *lblLowbar;
@property (weak, nonatomic) IBOutlet UISegmentedControl *sgmLowBar;


// See Above

// Teleop
//      Low Goal Scored During Teleop
    @property (weak, nonatomic) IBOutlet UIStepper *stpLowGoalScore;
    @property (weak, nonatomic) IBOutlet UILabel *lblLowGoalScore;
- (IBAction)didScoreLow:(UIStepper *)sender;

//      High Goal Scored During Teleop
     @property (weak, nonatomic) IBOutlet UIStepper *stpHighGoalScore;
@property (weak, nonatomic) IBOutlet UILabel *
    lblHighGoalScore;
- (IBAction)didScoreHigh:(UIStepper *)sender;



// Other Info
@property (weak, nonatomic) IBOutlet UISegmentedControl *sgmHang;
@property (weak, nonatomic) IBOutlet UISegmentedControl *sgmStrategy;

// Playing Defense and Defensive Skill
@property (weak, nonatomic) IBOutlet UISegmentedControl *sgmDefence;
- (IBAction)didChangeDefense:(UISegmentedControl *)sender;
@property (weak, nonatomic) IBOutlet UISegmentedControl *sgmDefenceSkill;


// Driver Skill
@property (weak, nonatomic) IBOutlet UISegmentedControl *sgmDriverSkill;


// Submit
@property (weak, nonatomic) IBOutlet UIButton *Submit;
- (IBAction)didSubmit:(UIButton *)sender;


// THe below are used in the UIPickerView and saving what row is selected.

@property (weak, nonatomic) IBOutlet UIPickerView *pickAutoDefense;
@property (weak, nonatomic) IBOutlet UILabel *lblAutoPickers;

// See above

// The labels listed below are used as varibles, as using varibles normally periviously crashed the app.





// The methods used in the ViewController.m

- (void) Save;
-(void) NextMatch;
@end

