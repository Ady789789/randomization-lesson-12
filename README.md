 @State private var message = ""
    @State private var photoName = ""
    @State private var lastMessageNumber = -1
    @State private var lastphotoNumber = -1
    
    var body: some View {
        VStack {
            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
                .multilineTextAlignment(.center)
                .minimumScaleFactor(0.5)
                .frame(height: 100)
                .animation(.easeIn(duration: 0.15), value: message)
            
            Image(photoName)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 45))
                .shadow(radius: 50)
                .animation(.default, value: photoName)
            
            Spacer()
            
            Button("Show Message!") {
                let messages = ["You are Awesome!",
                                "You are Great!",
                                "You are Fantastic!",
                                "Fabulous? That's You!",
                                "You  make me Smile!",
                                "When the Genius Bar needs help, they call You!"]
                
              
                var messageNumber = Int.random(in: 0...messages.count-1)
                while messageNumber == lastMessageNumber{
                    messageNumber = Int.random(in: 0...messages.count-1)
                }
                message = messages[messageNumber]
                lastMessageNumber = messageNumber
                
                var photoNumber = Int.random(in: 0...9)
                while photoNumber == lastphotoNumber {
                    photoNumber = Int.random(in: 0...9)
                }
                photoName = "photo\(photoNumber)"
                lastphotoNumber = photoNumber
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
        }
        
        .padding()
    }

    ![image](https://github.com/user-attachments/assets/0b4a99e3-4634-433a-842a-fbf1f19889b5)
