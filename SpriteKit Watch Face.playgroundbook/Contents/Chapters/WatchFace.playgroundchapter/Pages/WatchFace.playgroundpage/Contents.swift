//#-hidden-code
import PlaygroundSupport
import SpriteKit
let watchFace = FaceScene.shared!

//#-end-hidden-code
//#-editable-code
watchFace.colorTheme = .marques
watchFace.faceStyle = .round
watchFace.numeralStyle = .cardinal
watchFace.tickmarkStyle = .all
watchFace.majorTickmarkShape = .circular
watchFace.minorTickmarkShape = .rectangular
watchFace.colorRegionStyle = .dynamicDuo

watchFace.showDate = true
watchFace.showCenterDisc = false

//#-end-editable-code

//#-hidden-code
watchFace.writeToSharedSettings()
//#-end-hidden-code
