Menu-List.
==========

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


  
