import UIKit

//: 4.3
print("Welcom to Swift")

//: 4.4
var x = 10

for index in 1...20 {
    let y = index * x
    x -= 1
    print(y)
}

//: 4.7
import SwiftUI
import PlaygroundSupport

struct ExampleView: View {
    
    @State private var rotation: Double = 0
    
    var body: some View {
        VStack {
            Rectangle()
                .fill(Color.blue)
                .frame(width: 200, height: 200)
                .rotationEffect(Angle(degrees: rotation))
                .animation(.linear(duration: 2), value: rotation)
            Button(action: {
                rotation = rotation < 360 ? rotation + 60 : 0
            }) {
                Text("Rotate")
            }
        }
        .padding(10)
    }
}

PlaygroundPage.current.setLiveView(ExampleView())
