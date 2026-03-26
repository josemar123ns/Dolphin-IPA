import Foundation

class GameControllerManager {
    enum Button {
        case a
        case b
        case x
        case y
        case dpadUp
        case dpadDown
        case dpadLeft
        case dpadRight
        case leftShoulder
        case rightShoulder
    }

    func buttonPressed(button: Button) {
        switch button {
        case .a:
            print("Button A pressed")
        case .b:
            print("Button B pressed")
        case .x:
            print("Button X pressed")
        case .y:
            print("Button Y pressed")
        case .dpadUp:
            print("D-Pad Up pressed")
        case .dpadDown:
            print("D-Pad Down pressed")
        case .dpadLeft:
            print("D-Pad Left pressed")
        case .dpadRight:
            print("D-Pad Right pressed")
        case .leftShoulder:
            print("Left Shoulder button pressed")
        case .rightShoulder:
            print("Right Shoulder button pressed")
        }
    }
}