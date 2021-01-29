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
background: rgb(34,193,195);
background: linear-gradient(0deg, rgba(34,193,195,1) 7%, rgba(45,151,253,1) 100%);
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
}

.right {
  right: 0;
background: linear-gradient(rgba(255,255,255,.8), rgba(255,255,255,.8)), url('logo_white_final.png');

background-position: top;

}
ul
{
padding-left: 120px;
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
li
{
font-size: 15px;
line-height: 30px;
color:rgb(96,96,96);
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
padding-left:30px;
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
  border-radius: 30px;
  margin-top: 50px;
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
</style>
</head>
<body>

<!--get session from login page and if session empty redirect to user login else stay in the servie page -->
<div class="splitleft left">
  <div class="centered">
  <!-- <img alt="serviceicon" src="serviceicon.png" > -->
    <img src="logo_transparent_final.png" alt="SGA logo"> 
  </div>
</div>

<div class="splitright right">
<div id="content">
    <img src="serviceicon.png" class="ribbon"/>
</div>
  <h1> Issues </h1>
  <h2>Swing Gate Opener</h2>
  <ul>
  <li>If not working, it indicates that the fuse on the circuit board is damaged. Please change it .</li>
  <li>If the motor is not operating,the hinges may be tight, please apply oil to  enable smooth running.</li>
  <li>Water droplets might me on the photocells , causing improper functioning. Please clean it .</li>
  </ul>
  <h2>Sliding Gate Opener</h2>
  
  <ul>
  <li>If not working, it indicates that the fuse on the circuit board is damaged. Please change it .</li>
  <li>The motor operation might be stopped due to immobility of the wheels on the track. Please clean the track and lubricate it for smooth operation.</li>
 <li>Water droplets might me on the photocells , causing improper functioning. Please clean it .</li>
 </ul>
  <h2>Shutter Gate Opener</h2>
  
  <ul>
  <li>If there is no current available and the ups isn't working, pull the chain in the motor for manual operation.</li>
  <li>Roller Gate Opener</li>
  <li>In case of opener operating than its limit the magnet maynot be sensed,remove nearby iron materials and clean it.</li>
  </ul>
  <a href="technicalissue.jsp" class="button">Technical Issue</a>
  <a href="home.html" class="button">Back</a>
</div>
</body>
</html>