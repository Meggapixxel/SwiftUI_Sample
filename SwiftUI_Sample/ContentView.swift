//
//  ContentView.swift
//  SwiftUITest
//
//  Created by Vadim Zhydenko on 12.11.2019.
//

import SwiftUI

struct StudentsListView: View {
    
    struct Student: Identifiable {
        
        var id: String
        
    }
    
    var body: some View {
        NavigationView {
            List {
                ForEach(
                    [Student(id: "0"), Student(id: "1"), Student(id: "2")]
                ) { item in
                    NavigationLink(destination: ColorsView()) {
                        Text(item.id)
                    }
                }
            }
        }
    }
}

struct ColorsView: View {
    var body: some View {
        Color.black.frame(width: 100, height: 100)
            .padding(10)
            .background(Color.red)
            .padding(10)
            .background(Color.green)
    }
}

struct ColorsVStackView: View {
    var body: some View {
        VStack {
            Color.red.frame(width: 100, height: 100)
            Color.orange.frame(width: 100, height: 100)
            Color.green.frame(width: 100, height: 100)
        }
    }
}

struct ColorsZStackView: View {
    var body: some View {
        ZStack {
            Color.red.frame(width: 100, height: 100).offset(x: 10, y: 10)
            Color.orange.frame(width: 100, height: 100)
            Color.green.frame(width: 100, height: 100).offset(x: -10, y: -10)
        }
    }
}

struct MountainView: View {
    var body: some View {
        Image("mountains")
            .frame(width: 300, height: 300)
            .mask(Circle())
    }
}

struct HeartView: View {
    
    @State private var colorChange = false
    @State private var sizeChange = false
    
    var body: some View {
        Image(systemName: "heart.fill")
            .font(.system(size: 200))
            .foregroundColor(colorChange ? .yellow : .red)
            .scaleEffect(sizeChange ? 1.5 : 1)
            .animation(.default)
            .onTapGesture { self.colorChange.toggle() }
            .onLongPressGesture { self.sizeChange.toggle() }
    }
    
}

struct CounterView: View {
    
    @State var counter = 0
    
    var body: some View {
        VStack(spacing: 16) {
            Text("\(counter)")
            Button(action: { self.counter += 1 } ) {
                Text("Increment")
            }
            NavigationLink(destination: HeartView()) {
                Text("HeartView")
            }
        }
    }
    
}

struct MultilineView: View {
    
    var body: some View {
        Text(
            "Your time is limited, so don’t waste it living someone else’s life. Don’t be trapped by dogma—which is living with the results of other people’s thinking. Don’t let the noise of others’ opinions drown out your own inner voice. And most important, have the courage to follow your heart and intuition."
        ).fontWeight(.bold)
            .font(.title)
            .foregroundColor(.gray)
            .multilineTextAlignment(.center)
            .lineSpacing(10)
//            .lineLimit(5)
    }
    
}

struct RotatedView: View {
    
    var body: some View {
        VStack(spacing: 50) {
            Text(
                "Your time is limited, so don’t waste it living someone else’s life. Don’t be trapped by dogma—which is living with the results of other people’s thinking. Don’t let the noise of others’ opinions drown out your own inner voice. And most important, have the courage to follow your heart and intuition."
            ).rotation3DEffect(.degrees(60), axis: (x: 1, y: 0, z: 0))
                .shadow(color: .gray, radius: 2, x: 0, y: 15)
            Text("Rotated").rotationEffect(.degrees(45))
        }
    }
    
}

import MapKit
struct MapView: UIViewRepresentable {

    func makeUIView(context: UIViewRepresentableContext<MapView>) -> MapView.UIViewType {
        return MKMapView()
    }

    func updateUIView(_ uiView: MKMapView, context: UIViewRepresentableContext<MapView>) {
        // TODO: update view
    }
    
    
}
struct ContentView: View {
    
    @State var counter = 0
    
    var body: some View {
        NavigationView {
            VStack(spacing: 16) {
                Text("Stay Hungry. Stay Foolish.")
                    .fontWeight(.bold)
                    .font(.system(.title, design: .rounded))
                    .foregroundColor(.green)
                NavigationLink(destination: MultilineView()) {
                    Text("MultilineView")
                }
                NavigationLink(destination: CounterView()) {
                    Text("CounterView")
                }
                NavigationLink(destination: HeartView()) {
                    Text("HeartView")
                }
                NavigationLink(destination: RotatedView()) {
                    Text("RotatedView")
                }
                
            }
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
