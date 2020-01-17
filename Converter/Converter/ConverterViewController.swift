//
//  ConverterViewController.swift
//  Converter
//
//  Created by Gabriel Theodoropoulos.
//  Copyright © 2020 AppCoda. All rights reserved.
//

import Cocoa

class ConverterViewController: NSViewController {

    @IBOutlet weak var degreesTextField: NSTextField!
    
    @IBOutlet weak var radiansTextField: NSTextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
 
    
    // MARK: - IBAction Methods
    
    @IBAction func convert(_ sender: Any) {
        if degreesTextField.stringValue.count > 0 {
            let rads = degreesTextField.doubleValue * Double.pi / 180.0
            radiansTextField.doubleValue = rads
        } else {
            if radiansTextField.stringValue.count > 0 {
                let deg = radiansTextField.doubleValue * 180.0 / Double.pi
                degreesTextField.doubleValue = deg
            }
        }
        
    }
    
    
    @IBAction func clear(_ sender: Any) {
        degreesTextField.stringValue = ""
        radiansTextField.stringValue = ""
    }
    
    
    @IBAction func showAbout(_ sender: Any) {
        guard let appDelegate = NSApplication.shared.delegate as? AppDelegate, let itemManager = appDelegate.statusItemManager else { return }
        itemManager.showAbout()
    }
    
    
    @IBAction func quit(_ sender: Any) {
        NSApplication.shared.terminate(self)
    }
}
