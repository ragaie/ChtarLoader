# ChtarLoader
Simple loader indicator based gif for iOS app, available for iPhone app or iPad.<br />
That you can full custom it as you which.<br />
With one object in all app for loader, using singletone design pattern.<br />

# Let's start first by install cocoaPod
 
   cd to your project folder 
   ```
   pod init
   ```
   Add to pod file for your target
   ```
   pod 'ChtarLoader'
   ```
   ```
   run pod update , or pod install
   ```
# How  using it :- 

By default configure you will get this loader type
![Screenshot](https://github.com/ragaie/ChtarLoader/blob/master/ChtarLoader/Screen%20Shot%202019-03-21%20at%2013.37.01.png) 
```
   import ChtarLoader
```
//to show loader in center of screen automatic 
```
    CHLoader.shared.startAnimate()
```
//to hide loader 
```
    CHLoader.shared.stopAnimate()
```

# what is available to change in it:-
you can custom it shared point in starting of app 


```
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions:   [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
            // Override point for customization after application launch.

          return true
    }
```

  
        // Override point for customization after application launch.
        //change loader background color
      
        CHLoader.shared.backGroundColor = UIColor.black
      
        //change shadow loader 
        CHLoader.shared.shadowColor = UIColor.white
        
        
        //change type of loader based some gif file in library 
        CHLoader.shared.type = CHLoaderType.Bars
        
        
        //or you can add your loader gif and just use name of it
        CHLoader.shared.gifName = "LoaderGif"
        
        
        // change height and width as you like based your gif size
        CHLoader.shared.height = 50
        CHLoader.shared.width = 50
  
    
    
# Find more free gif loader in this website
 - [loading.io](https://loading.io)

# some screen shot for loader already available in pod 

![Screenshot](https://github.com/ragaie/ChtarLoader/blob/master/ChtarLoader/Screen%20Shot%202019-03-21%20at%2013.36.41.png)
![Screenshot](https://github.com/ragaie/ChtarLoader/blob/master/ChtarLoader/Screen%20Shot%202019-03-21%20at%2013.36.16.png)


## Author

* **Ragaie alfy Fahmey**  - [ragaie](https://github.com/ragaie)

## You can find me in linked in:- 
- [Ragaie alfy](www.linkedin.com/in/ragaie-alfy)

## MIT License

Copyright (c) 2019 Ragaie alfy fahmey

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.


