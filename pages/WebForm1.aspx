<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="prediction__system.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
    <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script type="text/javascript"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style type="text/css">
        .auto-style1 {
            display: block;
            width: 350px;
            height: 100%;
            max-width:100%;height:auto;
        }
        
        /*{
            background-image: images/heart15.jpg; width:100%; height:100%;"
        }*/
        .auto-style4 {
            width: 260px;
            height: 194px;
            max-width:100%;height:auto;border-radius: 10px;
        }
        .auto-style5 {
            width: 260px;
            height: 194px;
            max-width: 100%;
            height: auto;border-radius: 10px;
        }
        .auto-style6 {
            width: 260px;
            height: 194px;
            max-width:100%;height:auto;border-radius: 10px;
        }
        .auto-style7 {
            width: 260px;
            height: 194px;
            max-width:100%;height:auto;border-radius: 10px;
        }
        .auto-style9 {
            width: 300px;
            height: 194px;
            max-width:100%;height:auto;border-radius: 10px;
        }
        
        
        .auto-style10 {
            width: 1000px;
            height: 667px;
            max-width:100%;height:auto;
        }
        </style>

</head>
<body>
    
    <form id="form1" runat="server">
         <nav class="container, text-left" style="font-size:40px;border-radius: 10px; height:100px;background-color:cadetblue">
          <asp:Label ID="Label1" runat="server" Text="HEART PREDICTION SYSTEM"  ></asp:Label> 
            <!--<asp:Button ID="Button1" runat="server" Text="HOME" class="btn btn" Style="margin-top: 40px; margin-left: 800px; width:78px; height: 70px; font-size:medium; color: black; background-color: cadetblue;font-size:20px;box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);" OnClick="Button1_Click"  />-->
            <asp:Button ID="Button3" runat="server" Text="CLICK" class="btn btn" Style="margin-top: 40px; margin-left: 500px; width:78px; height: 60px;  color: black; background-color: cadetblue; font-size:20px;border-radius: 10px;box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);" OnClick="Button3_Click"/>
            <!--<asp:Button ID="Button4" runat="server" Text="SIGNUP" class="btn btn" Style="margin-top: 40px; margin-left: 10px; width:90px; height: 60px; color: black; background-color: cadetblue; font-size:20px;border-radius: 10px;box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);" OnClick="Button4_Click"/>
           -->
            </nav>
       
    <div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="2000">
  <!-- Indicators -->
  <ol class="carousel-indicators" style= ";" >
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"  class="active"></li>
    <li data-target="#myCarousel" data-slide-to="2"  class="active"></li>
    <li data-target="#myCarousel" data-slide-to="3" class="active"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" style= "padding: 15px; ">
    <div class="item active"  style="margin-left: 20px;">
      <img  class="auto-style1" src="images/heart2.jpeg" class="img-fluid" max-width: 100%;  height: auto;width:100%;  position: absolute; top: 100px; alt="Amazon Echo" >
      
    </div>

    <div class="item" style="margin-left: 300px">
      <img class="auto-style1" src="images/heart9.jpg" class="img-fluid" max-width: 100%;  height: auto; width:100%; position: absolute; top: 100px; alt="xyz">
    </div>

    <div class="item" style="margin-left: 600px">
      <img class="auto-style1" src="images/heart3.jpg"  class="img-fluid" max-width: 100%;  height: auto; width:100%; position: absolute; top: 100px; alt="Samsung">
    </div>

      <div class="item" style="margin-left: 600px">
      <img  class="auto-style1" src="images/heart14.jpg"  class="img-fluid"  max-width: 100%;  height: auto; width:100%; position: absolute; top: 100px; alt="Samsung">
    </div>

  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

    <div>

        <img class="auto-style4" src="images/heart5.jpg" /><img class="auto-style5" src="images/heart8.jpg" /><img class="auto-style6" src="images/heart7.jpg" /><img class="auto-style7" src="images/heart11.jpg" /><img class="auto-style9" src="images/heart13.jpg" /></div>
    
    
        <p>
            &nbsp;</p>
        
       <nav class="container, text-left" style="font-size:40px; ">
        <asp:Label ID="Label2" runat="server" Text="ABOUT HEART DISEASE PREDICTION SYSTEM" ForeColor="#009999"></asp:Label></nav>
        <nav class="container, text-left" style="font-size:25px; font-style:oblique; ">
        <asp:Label ID="Label3" runat="server" Text="The Heart Disease Prediction system is an interactive clinical assessment tool that will assist individuals Age, Blood sugar and other parameters and will check the parameter from the training dataset and then it can predict if the person's heart is healthy or they are suspect with some health issues. The online, user-friendly tool will work on the attributes provided by the user and it then processes user specific details to check for various illnesses that could be associated with it. The system predict whether a patient should be diagnosed or not" ForeColor="Black"></asp:Label></nav>
         <br />
        <br />

        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />

        <br />
    </form>
        
    
</body>
</html>
