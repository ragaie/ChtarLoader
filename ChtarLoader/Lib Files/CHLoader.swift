//
//  ChtarLoader.swift
//  ChtarNetwork
//
//  Created by Ragaie alfy on 3/13/18.
//  Copyright © 2018 Ragaie alfy. All rights reserved.
//

import UIKit
import WebKit
open class CHLoader: NSObject {
    
   public static var shared : CHLoader = CHLoader()
    private var loaderView : WKWebView!
    
    private  var  plurView : UIView!
    private var animate : Bool! = false
    open var  width : CGFloat! = 50
    open var  height : CGFloat! = 50
    open var backGroundColor : UIColor = UIColor.white
    open var shadowColor : UIColor = UIColor.gray
    
    open var type : CHLoaderType! = .Default
    
    open var gifName : String = ""
    
    
    
    override init() {
        super.init()
    }
    
    open func startAnimate(){
        
        if plurView == nil {
            LoaderGif()
            animate = true
            
        }
        else{
            plurView.isHidden = false
            animate = true
            plurView.frame = loaderFrame()
        }
        
    }
    
    
    
    open func stopAnimate(){
        if plurView != nil {
            
            plurView.isHidden = true
        }
    }
    
    
    
    
    
    
    func LoaderGif(){
        //load file data
        
        let cornerValue : CGFloat = 8
        loaderView  = WKWebView.init(frame: CGRect.init(x: 3 , y: 3, width: width - 6, height: height - 6))
        plurView = UIView.init(frame: loaderFrame())
        plurView.backgroundColor = backGroundColor
        plurView.layer.cornerRadius = cornerValue
        var  url : URL!
        if gifName != ""{
            url = Bundle.main.url(forResource: gifName, withExtension: "gif")!
            
        }
        else {
            
            url = Bundle.main.url(forResource: type.rawValue, withExtension: "gif")!
            
        }
        // let url = Bundle.main.url(forResource: type.rawValue, withExtension: "gif")!
        let data = try! Data(contentsOf: url)
        loaderView.layer.cornerRadius = 10
        // loaderView.scalesPageToFit = true
        loaderView.contentMode = UIView.ContentMode.scaleAspectFit
        loaderView.isUserInteractionEnabled = false
        loaderView.backgroundColor = UIColor.clear
        loaderView.isOpaque = false
        loaderView.allowsLinkPreview = true
        loaderView.load(data, mimeType: "image/gif", characterEncodingName: "UTF-8", baseURL:  NSURL() as URL)
        
        plurView.addSubview(loaderView)
        
        
        
        plurView.layer.shadowColor = shadowColor.cgColor
        plurView.layer.shadowOpacity = 0.7
        plurView.layer.shadowOffset = CGSize.zero
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            UIApplication.shared.keyWindow?.addSubview(self.plurView)
        }
        NotificationCenter.default.addObserver(self, selector: #selector(CHLoader.rotated), name:  UIDevice.orientationDidChangeNotification, object: nil)
        
    }
    
    
    func loaderFrame()-> CGRect{
        let x = (UIScreen.main.bounds.width / 2) - (width / 2) //- ( cornerValue / 2)
        let y = (UIScreen.main.bounds.height / 2) - (height / 2)// - ( cornerValue / 2)
        return CGRect.init(x: x, y: y, width: width, height: height)
        
    }
    
    
    
    // hide and show loader to make sure update loader
    @objc func rotated() {
        if  ( UIDevice.current.orientation.isLandscape) ||  UIDevice.current.orientation.isPortrait  {
            if  plurView.isHidden == false {
                
                
                plurView.frame = loaderFrame()
                
            }
            
            
        }
    }
    
    
}
