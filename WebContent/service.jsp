<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Services</title>
<style>
body {
  font-family: Arial;
  color: black;
}

.splitleft {
  height: 100%;
  width: 30%;
  position: fixed;
  z-index: 1;
  top: 0;
  overflow-x: hidden;
  padding-top: 20px;
}
.splitright {
  height: 100%;
  width: 70%;
  position: fixed;
  z-index: 1;
  top: 0;
  overflow-x: hidden;
  padding-top: 20px;
}
.left {
  left: 0;
  background-color:rgb(0,172,230);
}

.right {
  right: 0;
background: linear-gradient(rgba(255,255,255,.8), rgba(255,255,255,.8)), url('logo1.png');

background-position: top;

}

.centered {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  text-align: center;
}

.centered img {
  width: 450px;
}
.techissuebutton:active{
padding-left:40px;
}
h1
{
color: rgb(0, 0, 0);
font-family: arial;
font-size: 30px;
font-weight: bold;
padding-left:30px;
}
h2
{
color: rgb(0, 0, 0);
font-family: arial;
font-size: 20px;
font-style:normal;
padding-left:35px;
}
p
{
padding-left:40px;
}
.button {
  background-color:rgb(0, 61, 102);;
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
   margin-left: 240px;
  cursor: pointer;
  padding-left:40px;
}
#content {
    position: relative;
}
#content img {
    position: absolute;
    top: 0px;
    right: 30px;
    width: 100px;
    
}
ul li{
    list-style-type: none;
    display: inline;
    padding-left: 70px;
}
ul a
{


    text-decoration: none;
    color: black;
}
ul 
{
margin-top: -20px;
    padding-top: 50px;
    z-index: 10;
    background-color: rgb(0,172,230);
    width: 100%;
}
</style>
</head>
<body>

<!--get session from login page and if session empty redirect to user login else stay in the servie page -->
<div class="splitleft left">
  <div class="centered">
  <!-- <img alt="serviceicon" src="serviceicon.png" > -->
    <img src="logo_transparent.png" alt="SGA logo"> 
  </div>
</div>

<div class="splitright right">
<!--  <ul>
    <a href="home.html"><li>HOME</li></a>
    <a href="login.html"><li>LOGIN</li></a>
    <a href="service.jsp"><li>SERVICES</li></a>
    <a href="products.html"><li>PRODUCTS</li></a>
    <a href="about.html"><li>ABOUT US</li></a>
    <a href="contact.html"><li>CONTACT US</li></a>
</ul>
-->
<div id="content">
    <img src="serviceicon.png" class="ribbon"/>
</div>
  <h1> Issues </h1>
  <h2>Swing Gate Opener</h2>
  <p>If not working, it indicates that the fuse on the circuit board is damaged. Please change it . <br><br>
  If the motor is not operating,the hinges may be tight;please apply oil to  enable smooth running. <br><br>
  Water droplets might me on the photocells , causing improper functioning. Please clean it . <br> <br></p>
  <h2>Sliding Gate Opener</h2>
  <p>If not working, it indicates that the fuse on the circuit board is damaged. Please change it . <br><br>
  The motor operation might be stopped due to immobility of the wheels on the track. Please clean the track and lubricate it for smooth operation. <br><br>
 Water droplets might me on the photocells , causing improper functioning. Please clean it . <br><br> </p>
  <h2>Shutter Gate Opener</h2>
  <p>If there is no current available and the ups isn't working, pull the chain in the motor for manual operation. <br><br> </p>
  <h2>Roller Gate Opener</h2>
  <p>In case of opener operating than its limit the magnet maynot be sensed,remove nearby iron materials and clean it.<br> <br></p>
  <a href="technicalissue.jsp" class="button">Technical Issue</a>
  <a href="home.html" class="button">Back</a>
</div>
</body>
</html>