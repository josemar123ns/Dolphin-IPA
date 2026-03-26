import AVFoundation

class AirPlayManager {
    static let shared = AirPlayManager()
    private var externalScreen: UIScreen?

    func setup() {
        NotificationCenter.default.addObserver(forName: UIScreen.didConnectNotification, object: nil, queue: .main) { [weak self] _ in
            self?.handleAirPlayConnect()
        }
        NotificationCenter.default.addObserver(forName: UIScreen.didDisconnectNotification, object: nil, queue: .main) { [weak self] _ in
            self?.handleAirPlayDisconnect()
        }
    }

    func handleAirPlayConnect() {
        externalScreen = UIScreen.screens.count > 1 ? UIScreen.screens[1] : nil
        print("✅ AirPlay Screen Connected")
        NotificationCenter.default.post(name: NSNotification.Name("AirPlayConnected"), object: nil)
    }

    func handleAirPlayDisconnect() {
        externalScreen = nil
        print("❌ AirPlay Screen Disconnected")
        NotificationCenter.default.post(name: NSNotification.Name("AirPlayDisconnected"), object: nil)
    }

    var isConnected: Bool {
        return UIScreen.screens.count > 1
    }

    func getExternalScreen() -> UIScreen? {
        return externalScreen
    }
}