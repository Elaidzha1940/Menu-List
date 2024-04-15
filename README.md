⌨️ Menu-ListApp with SwiftUI.
==========

<img src="https://github.com/Elaidzha1940/Menu-List/assets/64445918/b3b98761-0bc6-4447-b576-3a3fe293ab39" width="150" height="290">
<img src="https://github.com/Elaidzha1940/Menu-List/assets/64445918/8173ecb9-03ce-4077-9e72-118c2fda9d1e" width="150" height="290">
<img src="https://github.com/Elaidzha1940/Menu-List/assets/64445918/615dd51b-2436-467b-87b0-f5ad3797cbd6" width="150" height="290">
<img src="https://github.com/Elaidzha1940/Menu-List/assets/64445918/84cd9412-f720-4561-a86c-ad8302129fc5" width="150" height="290">
<img src="https://github.com/Elaidzha1940/Menu-List/assets/64445918/61e1528f-6a97-458f-b2c1-d3158fe469a4" width="150" height="290">
<img src="https://github.com/Elaidzha1940/Menu-List/assets/64445918/244ec164-bc41-4945-98c8-5db4233db166" width="150" height="290">
<img src="https://github.com/Elaidzha1940/Menu-List/assets/64445918/26c64df8-61a7-48c7-9991-1b3e4479934a" width="150" height="290">
<img src="https://github.com/Elaidzha1940/Menu-List/assets/64445918/ec8ba921-701b-4aee-b86a-ed01b62fe4c6" width="150" height="290">
<img src="https://github.com/Elaidzha1940/Menu-List/assets/64445918/a4e56d7f-d721-4aec-8647-f12015b31995" width="150" height="290">
<img src="https://github.com/Elaidzha1940/Menu-List/assets/64445918/009818bb-c071-4340-a8a7-c248456f96a3" width="150" height="290">

----------

Validation of email in swift iOS application
----------
``````````ruby
extension String {
    
    var isValidEmail: Bool {
        let emailFormat         = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPredicate      = NSPredicate(format: "SELF MATCHES %@", emailFormat)
        return emailPredicate.evaluate(with: self)
    }
}
``````````

Validation of email in swift iOS application - Swift 5.7
---------
`````````ruby

import SwiftUI
import RegexBuilder

extension String {
    
    var isValidEmail: Bool {
        let emailRegex = Regex {
            OneOrMore {
                CharacterClass(
                    .anyOf("._%+-"),
                    ("A"..."Z"),
                    ("0"..."9"),
                    ("a"..."z")
                )
            }
            "@"
            OneOrMore {
                CharacterClass(
                    .anyOf("-"),
                    ("A"..."Z"),
                    ("a"..."z"),
                    ("0"..."9")
                )
            }
            "."
            Repeat(2...64) {
                CharacterClass(
                    ("A"..."Z"),
                    ("a"..."z")
                )
            }
        }
        
        return self.wholeMatch(of: emailRegex) != nil
    }
}

`````````
----------

ViewModifier
------------
``````````ruby

struct StandardButton: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .buttonStyle(.bordered)
            .tint(.brandPrimary)
            .controlSize(.large)
    }
}

extension View {
    func standardButton() -> some View {
        self.modifier(StandardButton())
    }
}
``````````

You can apply modifier(_:)
----------
``````````ruby
.modifier(StandardButton())

.standardButton()

``````````
----------

Menu-List
----------
- Menu-List - App Lifecycle.
- Menu-List - Model.
- Menu-List - List View.
- Menu-List - Network Manager.
- Menu-List - Connecting the UI.
- Menu-List - Errors & Alerts.
- Menu-List - Loading View.
- Menu-List - Download Image.
- Menu-List - Remote Image.
- Menu-List - Project cleanup & organization.
- Menu-List - Detail View UI Setup.
- Menu-List - Detail View UI Connections.
- Menu-List - Detail View Refactor.
- Menu-List - Account View UI Setup.
- Menu-List - View Model & Text Validation.
- Menu-List - @AppStorage.
- Menu-List - Order Screen UI.
- Menu-List - Empty State.
- Menu-List - @EnvironmentObject - Order.
- Menu-List - iOS 15 - Initial Run.
- Menu-List - iOS 15 - Tabbar Badge & List Separator.
- Menu-List - iOS 15 - @FocusState Keyboard.
- Menu-List - iOS 15 - Async/Await Network Calls.
- Menu-List - iOS 15 - AsyncImage.
- Menu-List - iOS 16 - Regex, guard let.
- Menu-List - App Optimizations.
- Menu-List - Data Flow Review.
- Menu-List - iOS 17 @Observable.

---------
