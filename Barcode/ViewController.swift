//
//  ViewController.swift
//  Barcode
//
//  Created by hunglun on 20/12/15.
//  Copyright © 2015 hunglun. All rights reserved.
//

import UIKit
import AVFoundation
class ViewController: UIViewController , UIImagePickerControllerDelegate, UINavigationControllerDelegate{

    @IBOutlet var ImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //TODO: create a toolbar at the bottom.
    
    @IBAction func startImageCapture(sender: AnyObject) {
        //TODO: get preview working!
        let captureSession = AVCaptureSession() // <#Get a capture session#>;
        let previewLayer = AVCaptureVideoPreviewLayer(session: captureSession)
        //var previewLayer = AVCaptureVideoPreviewLayer(layerWithSession:captureSession)
     //   var aView = UIView() //<#The view in which to present the layer#>;
        previewLayer.frame = ImageView.bounds; // Assume you want the preview layer to fill the view.
        ImageView.layer.addSublayer(previewLayer)

        
    }

}

