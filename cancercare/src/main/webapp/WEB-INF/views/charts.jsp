<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<%@ page session="false"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="https://netdna.bootstrapcdn.com/twitter-bootstrap/2.1.0/css/bootstrap-responsive.min.css" rel="stylesheet">
<link rel="stylesheet" href="http://bootswatch.com/united/bootstrap.css" media="screen">
    <link rel="stylesheet" href="http://bootswatch.com/bower_components/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="http://bootswatch.com/assets/css/bootswatch.min.css">
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="../bower_components/bootstrap/assets/js/html5shiv.js"></script>
      <script src="../bower_components/bootstrap/assets/js/respond.min.js"></script>
    <![endif]-->
    <script type="text/javascript" async="" src="./Bootswatch  United_files/ga.js"></script><script type="text/javascript">

function al()
{
	alert("email sent");
	}
</script>

      <title>MooWheel Large Demo (with AJAX)</title>
      
      <style type="text/css" media="screen">
      canvas{
			}
         html, body {
            padding: 0;
            margin: 0;
         }
         
         /* body {
            text-align: left;
            background-color: #000;
            padding: 10px 0 0 10px;
         }
         
         div#canvas-moowheel {
            display: block;
            border: 1px solid #fff;
            background-color: #000;
            margin: 10px 0;
         } */
         
         a {
            color: #fff;
            font: 700 14px tahoma, verdana, arial, sans-serif;
         }
      </style>
      <style>
      legend.scheduler-border {
    font-size: 1.2em !important;
    font-weight: bold !important;
    text-align: left !important;
    width:inherit; /* Or auto */
    padding:0 10px; /* To give a bit of padding on the left and right */
    

}</style>
      
      <script src="<c:url value="/resources/css/mootools-1.2-more.js" />"></script>
<script src="<c:url value="/resources/css/mootools-1.2.5-core-jm.js" />"></script>
<script src="<c:url value="/resources/css/excanvas.js" />"></script>
<script src="<c:url value="/resources/css/canvastext.js" />"></script>
<script src="<c:url value="/resources/css/moowheel.js" />"></script>
<script src="<c:url value="/resources/css/Chart.js" />"></script>     
      <!--[if IE]>   
         <script type="text/javascript" src="../js/excanvas.js"></script>
      <![endif]-->
      <script type="text/javascript">
      window.onload = function() {
          new MooWheel.Remote(false, $('canvas'), {url: './generate.php', radialMultiplier: 10});
       };
       
       
    </script>
   </head>
   <form>
   <body style="font-family: Arial; border: 0 none;"
	onload="drawVisualization();">
	<style type="text/css">
  b {font-size: large; font-style: italic}
  
</style>
	<script src="./Bootswatch  United_files/bsa(1).js"></script>
	<div class="navbar navbar-default navbar-fixed-top">
      <div class="container">
        <div class="navbar-collapse collapse" id="navbar-main">
          <ul class="nav navbar-nav">
            <li class="dropdown">
              <a class="dropdown-toggle" data-toggle="dropdown" href="/app" id="themes">Home<span class="caret"></span></a>
          
            </li>
            <li>
              <a href="/app/screening">Treatment Centers</a>
            </li>
            <li>
              <a href="/app/chart">Awareness</a>
            </li>
            <li>
              <a href="/app/stories">Stories</a>
            </li>
            <li>
              <a href="/app/forum">Forum</a>
            </li>
            
          </ul>

          <ul class="nav navbar-nav navbar-right">
            <li><a href="https://donate.cancer.org/index" target="_blank">Donate</a></li>
          </ul>
        </div>
      </div>
    </div>
    
        <br>
        <br>
          <div >
            <h1><font color="#4863A0">Rise Above Cancer</font></h1>
              <p class="lead">Join us in the fight against Cancer!</p>
              <br>
              <font color ="#C48189"><b>"Prevention is better than cure" <br></font>
              <h4 align="justify"><font color="#98AFC7">Radar Charts shows the causes of cancer.The causes of cancer are diverse, complex, and only partially understood. Many things are known to increase the<br> risk of cancer, including tobacco(25-30%),Obesity(30-35%),Infections(15-20%),Stress(2-5%),Radiation(8-10%),Lack of Excercise(1-3%), <br>Environmental Pollutants(0-2%)
             </font> 
              
              </div>
          
 
 <font color="#566D7E"> <br>
              Moo-wheel - Symptoms of types of cancer
            
            
            </b></font>
            

   <canvas id="canvas" height="450" width="450"></canvas>
   
 <!-- <legend>Causes of cancer</legend>
  			  tobacco : 25-30% &nbsp&nbsp
              Obesity : 30-35%
              Infections : 15-20% &nbsp&nbsp
              Stress : 2-5%
              Radiation : 8-10%&nbsp&nbsp
              Lack of Excercise : 1-3%
              Environmental Pollutants : 0-2%
              
  -->
 <div id="canvas-moowheel"></div>
	<script>

		var radarChartData = {
			labels : ["Tobacco","Obesity","Infections","Stress","Radiation","Lack of Excercise","Environmental Pollutants"],
			datasets : [
				{
					fillColor : "rgba(220,220,220,0.5)",
					strokeColor : "rgba(220,220,220,1)",
					pointColor : "rgba(220,220,220,1)",
					pointStrokeColor : "#fff",
					data : [30,35,20,5,10,3,2]
				},
				{
					fillColor : "rgba(151,187,205,0.5)",
					strokeColor : "rgba(151,187,205,1)",
					pointColor : "rgba(151,187,205,1)",
					pointStrokeColor : "#fff",
					data : [25,30,15,2,8,1,0]
				} 
			]
			
		}

	var myRadar = new Chart(document.getElementById("canvas").getContext("2d")).Radar(radarChartData,{scaleShowLabels : false, pointLabelFontSize : 10});
	
	</script>
      <script>
      var data = [{
           id: 'bladder',
           text: 'Bladder',
           connections: ['blood', 'pain']
          },
          
          {
              id: 'blood',
              text: 'Blood secretion',
              connections: ['lump','change','itching']
             },
             
             {
                 id: 'pain',
                 text: 'Pain',
                 connections: []
                },
                
                {
                    id: 'lump',
                    text: 'Lump',
                    connections: []
                   },
                   
                   {
                       id: 'change',
                       text: 'Change in Complextion',
                       connections: []
                      },
                      
                      {
                          id: 'itching',
                          text: 'Itching',
                          connections: []
                         },
                         
                         {
                             id: 'fatigue',
                             text: 'Fatigue ',
                             connections: []
                            },
                            
                            {
                                id: 'Weight loss',
                                text: 'Weight loss',
                                connections: []
                               },
                               
                               {
                                   id: 'bleeding',
                                   text: 'Bleeding',
                                   connections: []
                                  },
                                  
                                  {
                                      id: 'fever',
                                      text: 'Fever',
                                      connections: []
                                     },
                                     
                                     {
                                         id: 'nightswt',
                                         text: 'Night Sweating',
                                         connections: []
                                        },
                                        
                                        {
                                            id: 'infections',
                                            text: 'Infections',
                                            connections: []
                                           },
                                           {
                                               id: 'headache',
                                               text: 'Headache',
                                               connections: []
                                              },
                                                 
                                                 {
                                                     id: 'cough',
                                                     text: 'Cough',
                                                     connections: []
                                                    },
                                                    
                                                    {
                                                        id: 'pigmentation',
                                                        text: 'Pigmentation',
                                                        connections: []
                                                       },
                                                       
                                                       {
                                                           id: 'Trouble',
                                                           text: 'Trouble in Swallowing ',
                                                           connections: []
                                                          },
                                        
                                        
          
          {
           id: 'breast',
           text: 'Breast',
           connections: ['lump','change','itching']
          },

          {
           id: 'colon and rectal',
           text: 'Colon and Rectal',
           connections: ['pain', 'blood','fatigue','Weight loss']
          },
          
          {
              id: 'kidney',
              text: 'Kidney',
              connections: ['lump', 'blood','pain','Weight loss']
             },
             
             {
                 id: 'leukemia',
                 text: 'Leukemia',
                 connections: ['fever','nightswt','pain','Weight loss','fatigue','infections','headache']
                },
                
                {
                    id: 'lung',
                    text: 'Lung',
                    connections: ['pain', 'headache','Weight loss','fatigue','cough']
                   },
                   
                   {
                       id: 'melanoma',
                       text: 'Melanoma',
                       connections: ['itching', 'bleeding','pigmentation']
                      },
                      
                      {
                          id: 'prostate',
                          text: 'Prostate',
                          connections: ['blood', 'pain']
                         },
                         
                            
                            {
                                id: 'thyroid',
                                text: 'Thyroid',
                                connections: ['Trouble', 'pain','lump','cough']
                               },
          
          {
           id: 'endometrial',
           text: 'Endometrial',
           connections: ['bleeding', 'pain']
          }];
      var wheel = new MooWheel(data, $('canvas-moowheel'));
      
      </script> 
      
   </body>
   </form>
</html>

<%-- <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
   <head>
      <title>MooWheel Large Demo (with AJAX)</title>
      
      <style type="text/css" media="screen">
      canvas{
			}
         html, body {
            padding: 0;
            margin: 0;
         }
         
         /* body {
            text-align: left;
            background-color: #000;
            padding: 10px 0 0 10px;
         }
         
         div#canvas-moowheel {
            display: block;
            border: 1px solid #fff;
            background-color: #000;
            margin: 10px 0;
         } */
         
         a {
            color: #fff;
            font: 700 14px tahoma, verdana, arial, sans-serif;
         }
      </style>
      
      <script src="<c:url value="/resources/css/mootools-1.2-more.js" />"></script>
<script src="<c:url value="/resources/css/mootools-1.2.5-core-jm.js" />"></script>
<script src="<c:url value="/resources/css/excanvas.js" />"></script>
<script src="<c:url value="/resources/css/canvastext.js" />"></script>
<script src="<c:url value="/resources/css/moowheel.js" />"></script>
<script src="<c:url value="/resources/css/Chart.js" />"></script>     
      <!--[if IE]>   
         <script type="text/javascript" src="../js/excanvas.js"></script>
      <![endif]-->
      <script type="text/javascript">
      window.onload = function() {
          new MooWheel.Remote(false, $('canvas'), {url: './generate.php', radialMultiplier: 10});
       };
       
       
    </script>
   </head>
   
   <body>
   <canvas id="canvas" height="450" width="450"></canvas>

 <div id="canvas-moowheel"></div>
	<script>

		var radarChartData = {
			labels : ["Tobacco","Obesity","Infections","Stress","Radiation","Lack of Excercise","Environmental Pollutants"],
			datasets : [
				{
					fillColor : "rgba(220,220,220,0.5)",
					strokeColor : "rgba(220,220,220,1)",
					pointColor : "rgba(220,220,220,1)",
					pointStrokeColor : "#fff",
					data : [30,35,20,5,10,3,2]
				},
				{
					fillColor : "rgba(151,187,205,0.5)",
					strokeColor : "rgba(151,187,205,1)",
					pointColor : "rgba(151,187,205,1)",
					pointStrokeColor : "#fff",
					data : [25,30,15,2,8,1,0]
				} 
			]
			
		}

	var myRadar = new Chart(document.getElementById("canvas").getContext("2d")).Radar(radarChartData,{scaleShowLabels : false, pointLabelFontSize : 10});
	
	</script>
      <script>
      var data = [{
           id: 'bladder',
           text: 'Bladder',
           connections: ['blood', 'pain']
          },
          
          {
              id: 'blood',
              text: 'Blood secretion',
              connections: ['lump','change','itching']
             },
             
             {
                 id: 'pain',
                 text: 'Pain',
                 connections: []
                },
                
                {
                    id: 'lump',
                    text: 'Lump',
                    connections: []
                   },
                   
                   {
                       id: 'change',
                       text: 'Change in Complextion',
                       connections: []
                      },
                      
                      {
                          id: 'itching',
                          text: 'Itching',
                          connections: []
                         },
                         
                         {
                             id: 'fatigue',
                             text: 'Fatigue ',
                             connections: []
                            },
                            
                            {
                                id: 'Weight loss',
                                text: 'Weight loss',
                                connections: []
                               },
                               
                               {
                                   id: 'bleeding',
                                   text: 'Bleeding',
                                   connections: []
                                  },
                                  
                                  {
                                      id: 'fever',
                                      text: 'Fever',
                                      connections: []
                                     },
                                     
                                     {
                                         id: 'nightswt',
                                         text: 'Night Sweating',
                                         connections: []
                                        },
                                        
                                        {
                                            id: 'infections',
                                            text: 'Infections',
                                            connections: []
                                           },
                                           {
                                               id: 'headache',
                                               text: 'Headache',
                                               connections: []
                                              },
                                                 
                                                 {
                                                     id: 'cough',
                                                     text: 'Cough',
                                                     connections: []
                                                    },
                                                    
                                                    {
                                                        id: 'pigmentation',
                                                        text: 'Pigmentation',
                                                        connections: []
                                                       },
                                                       
                                                       {
                                                           id: 'Trouble',
                                                           text: 'Trouble in Swallowing ',
                                                           connections: []
                                                          },
                                        
                                        
          
          {
           id: 'breast',
           text: 'Breast',
           connections: ['lump','change','itching']
          },

          {
           id: 'colon and rectal',
           text: 'Colon and Rectal',
           connections: ['pain', 'blood','fatigue','Weight loss']
          },
          
          {
              id: 'kidney',
              text: 'Kidney',
              connections: ['lump', 'blood','pain','Weight loss']
             },
             
             {
                 id: 'leukemia',
                 text: 'Leukemia',
                 connections: ['fever','nightswt','pain','Weight loss','fatigue','infections','headache']
                },
                
                {
                    id: 'lung',
                    text: 'Lung',
                    connections: ['pain', 'headache','Weight loss','fatigue','cough']
                   },
                   
                   {
                       id: 'melanoma',
                       text: 'Melanoma',
                       connections: ['itching', 'bleeding','pigmentation']
                      },
                      
                      {
                          id: 'prostate',
                          text: 'Prostate',
                          connections: ['blood', 'pain']
                         },
                         
                            
                            {
                                id: 'thyroid',
                                text: 'Thyroid',
                                connections: ['Trouble', 'pain','lump','cough']
                               },
          
          {
           id: 'endometrial',
           text: 'Endometrial',
           connections: ['bleeding', 'pain']
          }];
      
      	
      
      var wheel = new MooWheel(data, $('canvas-moowheel'));
 
      
      
      </script> -->
   </body>
</html> --%>
