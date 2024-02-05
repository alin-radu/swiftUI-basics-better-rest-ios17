//https://www.youtube.com/watch?v=fB4HnpS8qkw

import SwiftUI

struct StepperDatePicker: View {
    @State private var sleepAmount = 8.0
    @State private var wakeUp = Date.now
    
    var body: some View {
        VStack(spacing: 30) {
//            displaying a date
            Text(Date.now, format: .dateTime.day().month().year())
            
            Text(Date.now.formatted(date: .long, time: .shortened))
            
            Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount, in: 4...12, step: 0.5)
            
            DatePicker("Pick a Date", selection: $wakeUp, displayedComponents: .date)
                .labelsHidden()
            
            DatePicker("Pick a Date", selection: $wakeUp, in: Date.now... , displayedComponents: .date)
                .labelsHidden()
        }
        .padding(30)
        
    }
    
    func exampleDates() {
//        choosing a date
//        var components = DateComponents()
//        components.hour = 8
//        components.minute = 0
//        let date = Calendar.current.date(from: components) ?? .now
        
//        extracting a date from a selected date
//        let components = Calendar.current.dateComponents([.hour, .minute], from: .now)
//        let hour = components.hour ?? 0
//        let minute = components.minute ?? 0
    }
    
    
}

#Preview {
    StepperDatePicker()
}
