//
//  WebserverSetupViewController.swift
//  Barcode
//
//  Created by hunglun on 12/21/15.
//  Copyright © 2015 hunglun. All rights reserved.
//

import UIKit

class WebserverSetupViewController: UIViewController {

    @IBOutlet var webURLField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet var webserverActivationStatus: UISwitch!

    @IBAction func webserverSwitchValueChanged(sender: AnyObject) {
        //TODO: save the value into a nonvolatile memory location.
    }
    @IBAction func webserverFieldEditDidEnd(sender: UITextField) {
        //TODO: save the URL into a nonvolatile memory location.
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
