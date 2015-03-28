//
//  ViewController.swift
//  ScrollView
//
//  Created by Suleyman Calik on 28/03/15.
//  Copyright (c) 2015 Wissen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var scrollView: UIScrollView!
    var manzaraView:UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        prepareScrollView()
    }

    
    func prepareScrollView() {
        var manzaraImage = UIImage(named: "manzara")
        manzaraView = UIImageView(image: manzaraImage)
        scrollView.addSubview(manzaraView)
        
        // scrollView'in içeriğinin boyutunu resmin boyutu kadar yapıyoruz
        // böylece scroll edilebilir oluyor
        scrollView.contentSize = manzaraImage!.size
        
        
        // Resmi zoom yapabilmek için scrollView'in min ve max zoom değerlerini ayarlıyoruz
        scrollView.minimumZoomScale = 0.1
        scrollView.maximumZoomScale = 1.5
        
        // Zoom yapılacak subview'i return edebilmek için scrollView'in delegate'i oluyoruz
        scrollView.delegate = self
        
        
        // Double Tap olayını yakalamak için UITapGestureRecognizer oluşturuyoruz
        var tapRecognizer = UITapGestureRecognizer(target:self, action:"doubleTap")
        // tapRecognizer'in gerekli tap sayısını 2'ye çıkartıyoruz
        // default değeri 1'dir
        tapRecognizer.numberOfTapsRequired = 2
        // tapRecognizer'i scrollView'e ekliyoruz
        scrollView.addGestureRecognizer(tapRecognizer)
    }
    
    
    func doubleTap() {
        // ScrollView'in zoomScale değerini kontrol ediyoruz.
        // Eğer maximum seviyede ise minimuma çekiyoruz
        // Maximum seviyede değilse ise maximuma çekiyoruz
        if scrollView.zoomScale == scrollView.maximumZoomScale {
            scrollView.setZoomScale(scrollView.minimumZoomScale, animated:true)
        }
        else {
            scrollView.setZoomScale(scrollView.maximumZoomScale, animated:true)
        }
    }
    
}


//MARK: ScrollView Methods

extension ViewController:UIScrollViewDelegate {
    
    func viewForZoomingInScrollView(scrollView: UIScrollView) -> UIView? {
        // zoom yapılacak subView'i dönüyoruz
        return manzaraView
    }
    
    
}





















