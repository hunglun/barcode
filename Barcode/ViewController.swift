//
//  ViewController.swift
//  Barcode
//
//  Created by hunglun on 20/12/15.
//  Copyright © 2015 hunglun. All rights reserved.
//

import UIKit
import AVFoundation
class ViewController: UIViewController ,  AVCaptureVideoDataOutputSampleBufferDelegate, UINavigationControllerDelegate{


    @IBOutlet var cameraView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.

    }

    @IBOutlet var captureButton: UIButton!
    //TODO: create a toolbar at the bottom.
    
    @IBAction func startImageCapture(sender: AnyObject) {

        
        
        let captureSession = AVCaptureSession()

        
        let avCaptureDevice = AVCaptureDevice.defaultDeviceWithMediaType(AVMediaTypeVideo)

        /////////////////////////////////////////////////
        // Add camera as input device to capture session
        /////////////////////////////////////////////////
        if let input = try? AVCaptureDeviceInput(device: avCaptureDevice) where captureSession.canAddInput(input){

            captureSession.addInput(input)

            print("Video input is \(avCaptureDevice.localizedName)")

        }else{

            print("Unable to get video capture device")

            captureButton.enabled = false

            return // do not continue in this function, since video input is not available.

        }
        ////////////////////////////////////////////////////
        // Connect captureSession to UIView via previewLayer
        ////////////////////////////////////////////////////
        let previewLayer = AVCaptureVideoPreviewLayer(session: captureSession)

        cameraView = UIView() //<#The view in which to present the layer#>;
        previewLayer.frame = cameraView.bounds; // Assume you want the preview layer to fill the view.
        cameraView.layer.addSublayer(previewLayer)

        ////////////////////////////////////////////////////////
        // If camera access is granted, run the capture session
        ////////////////////////////////////////////////////////
        AVCaptureDevice.requestAccessForMediaType(AVMediaTypeVideo, completionHandler: {(granted: Bool)  in

            if (granted){
                print("camera access is granted")
                captureSession.startRunning()
            }
            else {
                print("camera access is NOT granted")
            }

        })
    
        //TODO: Processing Frames of Video
        //https://developer.apple.com/library/ios/documentation/AudioVideo/Conceptual/AVFoundationPG/Articles/04_MediaCapture.html
        
    
    }

}

