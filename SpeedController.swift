import Foundation

class SpeedController {
    enum Speed: Float {
        case x1 = 1.0
        case x2 = 2.0
        case x3 = 3.0
        case x4 = 4.0
    }

    private var currentSpeed: Speed = .x1

    func setSpeed(_ speed: Speed) {
        self.currentSpeed = speed
        optimizeForSpeed(speed)
    }

    func getCurrentSpeed() -> Speed {
        return currentSpeed
    }

    private func optimizeForSpeed(_ speed: Speed) {
        switch speed {
        case .x1:
            // Optimization for 1x speed
            break
        case .x2:
            // Optimization for 2x speed
            break
        case .x3:
            // Optimization for 3x speed
            break
        case .x4:
            // Optimization for 4x speed
            break
        }
    }
}