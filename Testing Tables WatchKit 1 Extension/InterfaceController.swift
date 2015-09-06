//
//  InterfaceController.swift
//  Testing Tables WatchKit 1 Extension
//
//  Created by Apple on 9/5/15.
//  Copyright © 2015 Kaffys. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var workoutTable: WKInterfaceTable!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        //this get calls when the screen loads
        self.workoutTable.setNumberOfRows(6, withRowType: "workoutRow")
        
        let workouts = [
        ("number 1","1 Hour"),
        ("number 2", "2 Hours"),
        ("number 1","1 Hour"),
        ("number 2", "2 Hours"),
        ("number 1","1 Hour"),
        ("number 2", "2 Hours")]
        
        for rowNumber in 0..<self.workoutTable.numberOfRows{
            
            let currentRow = self.workoutTable.rowControllerAtIndex(rowNumber) as! WorkoutController
            
            currentRow.workoutTitle.setText(workouts[rowNumber].0)
                currentRow.workoutTime.setText(workouts[rowNumber].1)
            
            
            
            
        }
        
        
        
    }

    @IBOutlet var workoutTitle: WKInterfaceLabel!
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
