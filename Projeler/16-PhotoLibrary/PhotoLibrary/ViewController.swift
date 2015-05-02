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
        
        // "iOS 8 ve üzeri mi" kontrolü yapıyoruz
        if floor(NSFoundationVersionNumber) > floor(NSFoundationVersionNumber_iOS_7_1) {
            
            // iOS8 ve üzeri ise UIAlertController kullanıyoruz
            var alertController = UIAlertController(title:"Fotoğraf Seç", message:"Kaynak seçiniz.", preferredStyle:UIAlertControllerStyle.ActionSheet)
            
            var action1 = UIAlertAction(title:"Fotoğraf Galerisi", style:UIAlertActionStyle.Default, handler:{ (action:UIAlertAction!) -> Void in
                self.openImagePicker(UIImagePickerControllerSourceType.PhotoLibrary)
            })
            alertController.addAction(action1)
            
            
            var action2 = UIAlertAction(title:"Kamera", style:UIAlertActionStyle.Default, handler: { (action:UIAlertAction!) -> Void in
                self.openImagePicker(UIImagePickerControllerSourceType.Camera)
            })
            alertController.addAction(action2)
            
            
            var action3 = UIAlertAction(title:"Vazgeç", style:UIAlertActionStyle.Cancel, handler: { (action:UIAlertAction!) -> Void in
                self.dismissViewControllerAnimated(true, completion:nil)
            })
            alertController.addAction(action3)
            
            
            presentViewController(alertController, animated:true, completion:nil)
        }
        else {
            // iOS7.1 ve altında ise UIActionSheet kullanıyoruz
            
            var actionSheet = UIActionSheet(title:"Kaynak seçiniz", delegate:self, cancelButtonTitle:"Vazgeç", destructiveButtonTitle:nil, otherButtonTitles: "Fotoğraf Galerisi","Kamera")
            actionSheet.showInView(self.view)
        }
        
    }
    
    
    func openImagePicker(sourceType:UIImagePickerControllerSourceType) {
        imagePicker.sourceType = sourceType
        presentViewController(imagePicker, animated:true, completion:nil)
    }
    

}


extension ViewController: UIImagePickerControllerDelegate , UINavigationControllerDelegate, UIActionSheetDelegate {
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [NSObject : AnyObject]) {
        
        if let selectedImage = info[UIImagePickerControllerOriginalImage] as? UIImage {
            backgroundImageView.image = selectedImage
            
            if picker.sourceType == UIImagePickerControllerSourceType.Camera {
                
                // Çekilen fotoğrafı galeriye kaydediyoruz.
                UIImageWriteToSavedPhotosAlbum(selectedImage, nil, "", nil)
            }
            
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
    
    
    
    
    func actionSheet(actionSheet: UIActionSheet, clickedButtonAtIndex buttonIndex: Int) {
        println("clickedButtonAtIndex: \(buttonIndex)")
        
        switch buttonIndex {
        case 1:
            openImagePicker(UIImagePickerControllerSourceType.PhotoLibrary)
        case 2:
            openImagePicker(UIImagePickerControllerSourceType.Camera)
        default:
            break
        }
    }
    
}





























