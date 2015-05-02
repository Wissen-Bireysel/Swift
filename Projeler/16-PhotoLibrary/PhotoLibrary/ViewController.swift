//
//  ViewController.swift
//  PhotoLibrary
//
//  Created by Suleyman Calik on 02/05/15.
//  Copyright (c) 2015 Wissen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var backgroundImageView: UIImageView!
    
    var imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imagePicker.delegate = self
    }

    @IBAction func changeBackground(sender: UIButton) {
        
        if UIImagePickerController.isCameraDeviceAvailable(UIImagePickerControllerCameraDevice.Rear) {
            // action sheet göster
            showActionSheet()
        }
        else {
            // direkt photo library aç
            openImagePicker(UIImagePickerControllerSourceType.PhotoLibrary)
        }
        
    }

    
    func showActionSheet() {
        
    }
    
    
    func openImagePicker(sourceType:UIImagePickerControllerSourceType) {
        imagePicker.sourceType = sourceType
        presentViewController(imagePicker, animated:true, completion:nil)
    }
    

}


extension ViewController: UIImagePickerControllerDelegate , UINavigationControllerDelegate {
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [NSObject : AnyObject]) {
        
        if let selectedImage = info[UIImagePickerControllerOriginalImage] as? UIImage {
            backgroundImageView.image = selectedImage
        }
        else {
            println("Hata oluştu. Fotograf gelmedi!")
        }
        
        
        dismissViewControllerAnimated(true, completion:nil)
    }
    
    
    func imagePickerControllerDidCancel(picker: UIImagePickerController) {
        println("Cancel'a bastı!")
        dismissViewControllerAnimated(true, completion:nil)
    }
    
}





























