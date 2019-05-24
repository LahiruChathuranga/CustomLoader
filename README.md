# CustomLoader
This contains custom loaders.Which can be used to your IOS application.
## Setup with CocoPods
  - Add ```pod 'EMDotLoader'```  to your pod file.  
  - Run ```pod install```  
  - Run ```open App.workspace``` 
  
  You can then import the framework in your project.
  ```
  import EMDotLoader
  
  ```
  Then you can initialize a loader
```
var loader = EMDotLoader?
```

 Setup loader
```
loader = EMDotLoader(backgroundColor: .black, dotColor: .red, style: .dot)
```
 Show/ hide loader
```
loader?.showLoader()

loader?.hideLoader()
```

### Customize Loader Colors
There are two main  Styles  in our pod
  - wave
  - dot
  - flipSqure
#### In ```wave style``` we can change only ```dot color```
#### In ```dot style``` we can change ```dot color``` and ```background color```
#### In ```flipSqure style``` we can change ```dot color``` and ```background color```

