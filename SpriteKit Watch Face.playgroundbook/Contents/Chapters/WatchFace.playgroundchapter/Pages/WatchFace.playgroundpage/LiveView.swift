import PlaygroundSupport
import SpriteKit

let sv = SKView()
let watchFace = FaceScene.shared!
let vc = FaceViewController()
vc.view = sv;

PlaygroundPage.current.liveView = vc
watchFace.camera?.xScale = 0.4
watchFace.camera?.yScale = 0.4

sv.presentScene(watchFace)
