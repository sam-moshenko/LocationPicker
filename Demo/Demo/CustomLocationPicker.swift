//
//  CustomLocationPicker.swift
//  LocationPickerExample
//
//  Created by Jerome Tan on 3/30/16.
//  Copyright © 2016 Jerome Tan. All rights reserved.
//

import UIKit
import LocationPicker

class CustomLocationPicker: LocationPicker {
    
    var viewController: ViewController!

    override func viewDidLoad() {
        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .Cancel, target: self, action: #selector(dismissLocationPicker(_:)))
        
        let doneButton = UIBarButtonItem(barButtonSystemItem: .Done, target: nil, action: nil)
        doneButton.enabled = false
        navigationItem.rightBarButtonItem = doneButton
        doneButtonItem = doneButton
        super.viewDidLoad()
    }
    
    func dismissLocationPicker(sender: UIBarButtonItem) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func locationDidSelect(locationItem: LocationItem) {
        
    }
    
    override func locationDidPick(locationItem: LocationItem) {
        viewController.showLocation(locationItem)
    }

}