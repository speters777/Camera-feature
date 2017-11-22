#Capturing UIImage

This project uses a pod from JRendel's wrapper on Apple's Keychain API  - KeyChainWrapperSwift.

Link : https://github.com/jrendel/SwiftKeychainWrapper

To build and run the project, use CameraFrameSave.xcworkspace NOT  the .xcodeproject file. This project must be connected to a real iPhone to test the camera capabilities.
Once the button "Take Picture" is clicked, the phone captures a video recording and saves frames for the required time.

The UIImage that is captured from each frame is first base 64 encoded and then stored on Apple's iCloud Keychain.

#Further Considerations

* Keychain is not secured on a jailbroken iPhone. 

One possibilty is to encrypt each image immediately (or all images packed into some container file) using the CommonCrypt Framework (stateless mode), then store in CoreData or in SQL, possibly storing only the decrypt key in the iCloud keychain

Another possibility is to get the GPS coordinates of the phone when images are recorded, use those numbers a part of the calculation of the encrytion key, and those coordinatates that to a server somewhere so must know those coordinates in order to create decryption key

* The UI for this app can be improved considerably. 


