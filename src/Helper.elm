module Helper exposing (..)


grades : List Float
grades =
    [ 7, 9.8, 6.9, 0 ]


type GradeStatus
    = Approved
    | Failed
    | Pending


categoricalGrade : List Float -> List GradeStatus
categoricalGrade list =
    List.map
        (\grade ->
            if grade >= 7 then
                Approved

            else if grade < 0 then
                Pending

            else
                Failed
        )
        list


type AirplaneStatus
    = OnTime
    | Boarding
    | Delayed
    | Cancelled


airplaneScheduleAction : AirplaneStatus -> String
airplaneScheduleAction state =
    case state of
        OnTime ->
            "Esperar"

        Delayed ->
            "Esperar"

        Cancelled ->
            "Pedir reembolso"

        Boarding ->
            "Buscar boleto"


li : List AirplaneStatus
li =
    [ OnTime, Boarding, Cancelled, Delayed ]


airportAction : List AirplaneStatus -> List String
airportAction list =
    List.map airplaneScheduleAction list
