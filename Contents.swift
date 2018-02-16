
// test 1





class sports {
    var sportstype: String?
    var playerscount: Int?
    
    init() {
        self.sportstype = ""
        self.playerscount = 0
    }
    init(st: String, pc: Int)
    {
        self.sportstype = st
        self.playerscount = pc
    }
    
    func display() {
        print("type of sport is :",self.sportstype!)
        print("number of players are",self.playerscount!)
    }
    
    
    
}

var obj1 = sports()
obj1.sportstype = "outdoor"
obj1.playerscount = 10
obj1.display()

var obj2 = sports()
//obj2.sportstype = "indoor"
obj2.playerscount = 2

if(obj2.playerscount! > 5 )
{
    obj2.sportstype = "outdoor"
    obj2.display()
}
else {
    obj2.sportstype = "indoor"
    obj2.display()
}

//   ************************************* protocols ************************************************************************
// **************************************** creating protocol for checking runrate functionality in cricket class **********


protocol Idisplay{
    var reqrr: Int {get set}
    func display1()
}
protocol Iprint{
    var extratime: Int {get set}
    
    func display2()
}


//  class cricket   and base class is sports and protocol is Idisplay  ******************************************************

class cricket: sports, Idisplay {
    var format: String?
    var overscount: Int?
    var totalwicket: Int?
    var totalruns: Int?
    var totalovers: Int?
    var avgruns: Double?
    var reqrr: Int = 8
    
    override init(){
        super.init()
        self.format = ""
        self.overscount =  0
        self.totalwicket = 0
        self.totalruns = 0
        self.totalovers = 0
        self.avgruns = 0.0
        
    }
    init(cst: String, cpc: Int,cformat: String,coverscount: Int,ctotalwicket:Int,ctotalruns: Int,ctotalovers: Int,cavgruns: Double){
        super.init(st: cst, pc: cpc)
        self.format = cformat
        self.overscount =  coverscount
        self.totalwicket =  ctotalwicket
        self.totalruns = ctotalruns
        self.totalovers = ctotalovers
        self.avgruns = cavgruns
    }
    override func display() {
        super.display()
        print("format of cricket : ",format!)
        print("no of overs per innings ",overscount! )
        print("total wickets down in inning : ", totalwicket!)
        print("total runs scored :", totalruns!)
        print("total over bowled by bowling team : ", totalovers!)
        print("average runrate :", avgruns!)
    }
    
    // ********** use protocol in class ****************** checking the require runrate status *************
    func display1() {
        if avgruns! < Double(reqrr)
        {
            print("batting team is behind require runrate" )
        }
        else {
            print ("batting team is batting at good run rate ")
        }
    }
}

// ob3 to display  whether game is test match or one day or t20 format ***************************

var obj3 =  cricket ()
obj3.sportstype = "outdoor"
obj3.playerscount = 22

if(obj3.format! == "t20")
{
 obj3.overscount = 20
}
else if (obj3.format! == "test match")
{
obj3.overscount = 90
    
}
else { obj3.overscount = 50 }

obj3.totalwicket = 7
obj3.totalruns = 145
obj3.totalovers = 15
// ********** convert int value to double format ****************************
obj3.avgruns = Double(obj3.totalruns! / obj3.totalovers!)

obj3.display()


obj3.display1()


// obj4


// obj4 to display the final score  of team 1 with wickets in proper format ****************************
var obj4 = cricket()

 obj4.overscount = 50
obj4.format = "one day"
obj4.totalruns = 140
obj4.totalwicket = 10
if(obj4.totalwicket == 10){
   
    print("batting team is allout ")
    print("total score : \(obj4.totalruns!)-\(obj4.totalwicket!) "   )
}


//  class football  and base class is sports and protocol is Iprint ******************************************************






class football : sports, Iprint {
    var totalmin: Int?
    var mincount: Int?
    var goalcount: Int?
    var redcount: Int?
    var penaltytime: Double?
    var penaltygoals: Int?
    var extratime: Int = 5
    
    override init(){
        super.init()
        self.totalmin = 0
        self.mincount = 0
        self.goalcount = 0
        self.redcount = 0
        self.penaltytime = 0.0
        self.penaltygoals = 0
        
    }
    
    init(fst: String, fpc: Int,ftotalmin: Int, fmincnt: Int,fgoalcnt: Int,fredcnt: Int,fpenaltytime:Double,fpengoals: Int)
    {
        super.init(st: fst, pc: fpc)
        self.totalmin = ftotalmin
        self.mincount = fmincnt
        self.goalcount = fgoalcnt
        self.redcount = fredcnt
        self.penaltytime = fpenaltytime
        self.penaltygoals = fpengoals
        
        
    }
    
    override func display() {
         super.display()
        print("no of minutes : ",totalmin! )
        print("no of minutes played ", mincount!)
        print("no of goals scored ", goalcount!)
        print("total red cards issued", redcount!)
        print("penalty time:",penaltytime!)
        print("penalty shootout goals", penaltygoals!)
    }
    
    // creating penalty function for getting total penalty time minutes ***********
    func penalty(){
        let count: Int?
        count = redcount
        penaltytime = Double(count! * 2)
        print("total penalty time : \(penaltytime!) min")
    }
    
// ************************************creating function display2 using protocol*****************************
    
    func display2() {
        
        if Int(penaltytime!) >= extratime {
            print("MATCH IS OVER & FINAL SCORE IS \(goalcount!)")
        }
        else {
            let remain = extratime - Int(penaltytime!)
            print("match is not over & remaining time is \(remain)")
        }
    }
    
}

// obj5 to display the penalty score

var obj5 = football()
obj5.totalmin = 90
obj5.mincount = 70
obj5.goalcount = 4
obj5.redcount = 1

if(obj5.redcount == 1)
{
    obj5.penaltytime = 2
}
else
{
    obj5.penaltytime = 0
}
obj5.penaltygoals = 2
obj5.display()
obj5.mincount =  90

// call penalty function for display total penalty time

obj5.penalty()


var obj6 = football()
obj6.goalcount = 5
obj6.mincount = 90
obj6.penaltytime = 2

// ***************** call if method to check who won the match ***********************
// compare two teams score to check who won
if ( obj6.mincount == 90)
{
    if obj5.goalcount! < obj6.goalcount!
    {
        print("obj 6 team won the match")
    }
    else if obj5.goalcount! > obj6.goalcount!
    {
        print("obj 5 team won the match")    }
}

 if (obj6.mincount == obj6.totalmin)
{
    print("game is  over")
}
 else {
    print("game is running")
}

// ********************* here we display the remaining time after the penalty time is started   ************** total extra time is 5 bydefault  ***** if match is drawn
// using protocol Iprint
obj6.display2()














