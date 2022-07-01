//
//  Route.swift
//  Run With Pleasure
//
//  Created by Pavel Naumov on 30.06.2022.
//

struct Route {
    let title: String
    let distance: String
    let dificulty: String
    let duration: String
    let description: String
    let withChild: String
    let mobileNetwork: String
}

struct City {
    let name: String
    let routes: [Route]
    
    static func getCityList() -> [City] {
        [
            City(name: "Москва",
                 routes: [
                    Route(title: "Бульварное кольцо",
                          distance: "9982 (м)",
                          dificulty: "⭐️⭐️",
                          duration: "2 часа",
                          description: "Бульварное кольцо - главный городской променад, непрерывная последовательность из 10 бульваров и 13 площадей, опоясывающих исторический центр города. Будучи одним из традиционных колец Москвы, в действительности Бульварное кольцо не замкнуто и имеет форму подковы, начинаясь и заканчиваясь вблизи набережных Москвы-реки.",
                          withChild: "допускается", mobileNetwork: "везде"),
                    Route(title: "",
                          distance: "",
                          dificulty: "",
                          duration: "",
                          description: "",
                          withChild: "",
                          mobileNetwork: ""),
                    Route(title: "",
                          distance: "",
                          dificulty: "",
                          duration: "",
                          description: "",
                          withChild: "",
                          mobileNetwork: ""),
                    Route(title: "",
                          distance: "",
                          dificulty: "",
                          duration: "",
                          description: "",
                          withChild: "",
                          mobileNetwork: ""),
                    Route(title: "",
                          distance: "",
                          dificulty: "",
                          duration: "",
                          description: "",
                          withChild: "",
                          mobileNetwork: "")
                 ]),
            City(name: "Новосибирск",
                 routes: [
                    Route(title: "",
                          distance: "",
                          dificulty: "",
                          duration: "",
                          description: "",
                          withChild: "",
                          mobileNetwork: ""),
                    Route(title: "",
                          distance: "",
                          dificulty: "",
                          duration: "",
                          description: "",
                          withChild: "",
                          mobileNetwork: ""),
                    Route(title: "",
                          distance: "",
                          dificulty: "",
                          duration: "",
                          description: "",
                          withChild: "",
                          mobileNetwork: ""),
                    Route(title: "",
                          distance: "",
                          dificulty: "",
                          duration: "",
                          description: "",
                          withChild: "",
                          mobileNetwork: ""),
                    Route(title: "",
                          distance: "",
                          dificulty: "",
                          duration: "",
                          description: "",
                          withChild: "",
                          mobileNetwork: "")
                 ]),
            City(name: "Иркутск",
                 routes: [
                    Route(title: "",
                          distance: "",
                          dificulty: "",
                          duration: "",
                          description: "",
                          withChild: "",
                          mobileNetwork: ""),
                    Route(title: "",
                          distance: "",
                          dificulty: "",
                          duration: "",
                          description: "",
                          withChild: "",
                          mobileNetwork: ""),
                    Route(title: "",
                          distance: "",
                          dificulty: "",
                          duration: "",
                          description: "",
                          withChild: "",
                          mobileNetwork: ""),
                    Route(title: "",
                          distance: "",
                          dificulty: "",
                          duration: "",
                          description: "",
                          withChild: "",
                          mobileNetwork: ""),
                    Route(title: "",
                          distance: "",
                          dificulty: "",
                          duration: "",
                          description: "",
                          withChild: "",
                          mobileNetwork: "")
                 ])
            
            
        ]
    }
}
