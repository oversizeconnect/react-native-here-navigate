import heresdk

@objc(ConfigModule)
class ConfigModule: NSObject {
    @objc(initializeHereSDK:withAccessKeySecret:)
    func initializeHereSDK(accessKeyID: String, accessKeySecret: String) -> String {
        let authenticationMode = AuthenticationMode.withKeySecret(
            accessKeyId: accessKeyID,
            accessKeySecret: accessKeySecret
        )
        let options = SDKOptions(authenticationMode: authenticationMode)
        
        do {
            try SDKNativeEngine.makeSharedInstance(options: options)
            return "SDKNativeEngine started"
        } catch let engineInstantiationError {
            return "SDKNativeEngine errored: \(engineInstantiationError.localizedDescription)"
        }
    }
}