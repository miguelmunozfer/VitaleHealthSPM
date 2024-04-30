# VitaleHealthSDK

[![CI Status](https://img.shields.io/travis/Miguel/VitaleSDK.svg?style=flat)](https://travis-ci.org/Miguel/VitaleSDK)
[![Version](https://img.shields.io/cocoapods/v/VitaleSDK.svg?style=flat)](https://cocoapods.org/pods/VitaleSDK)
[![License](https://img.shields.io/cocoapods/l/VitaleSDK.svg?style=flat)](https://cocoapods.org/pods/VitaleSDK)
[![Platform](https://img.shields.io/cocoapods/p/VitaleSDK.svg?style=flat)](https://cocoapods.org/pods/VitaleSDK)

## Description
VitaleHealthSDK is a comprehensive intelligent, automatic, and adaptive training and nutrition framework programmed in
Swift for iOS and iPadOS.

## Usage

### Requeriments

It is necessary to drag the 'vitaleCredentials' file into the Xcode project.

You need to add NSCalendarsUsageDescription, NSCameraUsageDescription, NSHealthUpdateUsageDescription, NSMicrophoneUsageDescription and NSHealthShareUsageDescription in your info.plist.

### Simple 1-line setup

Use your MyVitale credentials for initiating SDK. Your user_id must be permanent and unique for each App user (any user id, including the ones you are already using in your system,  can be used).

```swift
VitaleSDK.shared.startSDKWithConfig(config: "vitaleCredentials", userID: "USER_ID")

```

### Display Functionalities

The SDK provides methods to display different functionalities:

```swift
VitaleSDK.showNutrition()
VitaleSDK.showTraining()
VitaleSDK.showExperts()
VitaleSDK.showProfile()
```

### Update Personal Profile

To update the user's personal profile:

```swift
VitaleSDK.updatePersonalProfile(firstName: "John", lastName: "Cook", gender: .male, height: 180, weight: 75, birthDate: Date())
```

#### Description
Updates the personal profile of the user within the SDK. This method allows for the modification of the user's gender, height, weight, and birth date. All parameters are optional, enabling the update of specific information as needed.

#### Parameters
- `firstName: String?` (Optional): The firstName of the user. Can be `nil` if not updating this information.
- `lastName: String?` (Optional): The lastName of the user. Can be `nil` if not updating this information.
- `gender: UserGender?` (Optional): The gender of the user. Can be `nil` if not updating this information.
- `height: Int?` (Optional): The user's height in centimeters. Can be `nil` if not updating this information.
- `weight: Int?` (Optional): The user's weight in kilograms. Can be `nil` if not updating this information.
- `birthDate: Date?` (Optional): The user's birth date. Can be `nil` if not updating this information.

#### Example Usage
```swift
VitaleSDK.updatePersonalProfile(firstName: "John", lastName: "Cook", gender: .male, height: 180, weight: 75, birthDate: Date())
```

### UI Customization

`VitaleSDK` allows for the customization of various user interface aspects:

```swift
// Set the main color
VitaleSDK.setMainColor(color: "#hexColor")

// Set the primary button color
VitaleSDK.setPrimaryButtonColor("#hexColor")

// Set the navigation bar color
VitaleSDK.setNavigationBarColor(color: "#hexColor")

// Set the navigation tint color
VitaleSDK.setNavigationTintColor(color: "#hexColor")

// Set a small logo
VitaleSDK.setSmallLogo(UIImage(named: "logoImage"))
```

### `setPathologies(_:)`

#### Description
Sets the user's pathologies in the SDK. This method allows defining a list of specific medical conditions affecting the user, based on a predefined set of conditions.

#### Parameters
- `pathologies: [Pathologies]`: An array of the user's pathologies. Possible options include:
  - `.arterialHypertension`: Arterial Hypertension.
  - `.osteoporosis`: Osteoporosis.
  - `.diabetes`: Diabetes.
  - `.obesity`: Obesity.
  - `.highCholesterolOrTriglycerides`: High Cholesterol or Triglycerides.
  - `.backPain`: Back Pain.
  - `.metabolicsyndrome`: Metabolic Syndrome.
  - `.copd`: Chronic Obstructive Pulmonary Disease (COPD).
  - `.multipleSclerosis`: Multiple Sclerosis.
  - `.fibromyalgia`: Fibromyalgia.
  - `.stroke`: Stroke.
  - `.heartDisease`: Heart Disease.

#### Example Usage
```swift
VitaleSDK.setPathologies([.diabetes, .obesity, .highCholesterolOrTriglycerides])
```

### `getProfile(_:)`

#### Description
Retrieves the personal profile of the user. This function is asynchronous and returns the data through a completion block.

#### Parameters
- `completion: @escaping(PersonalProfile?)->()`: A completion block that is called with the user's profile. It may be `nil` if the information could not be retrieved.

#### Example Usage
```swift
VitaleSDK.getProfile { userProfile in
    if let profile = userProfile {
        print("User profile: \(profile)")
    } else {
        print("Failed to retrieve user profile")
    }
}
```

## Author

MyVitale, info@myvitale.com

## License

VitaleSDK is available under the MIT license. See the LICENSE file for more info.
