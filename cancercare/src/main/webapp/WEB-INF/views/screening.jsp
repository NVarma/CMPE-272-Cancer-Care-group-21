 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

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
</head>
<form method="post" action="/app/forum" ModelAttribute="forum">
<body style="font-family: Arial; border: 0 none;"
	onload="drawVisualization();">
	<style type="text/css">
  b {font-size: x-large}
  
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

<div class="container">
    <div class="page-header" id="banner">
        <div class="row">
          <div class="col-lg-6"\>
            <h1><font color="#4863A0">Rise Above Cancer</font></h1>
              <p class="lead">Join us in the fight against Cancer!</p>
              </div>
        </div>
        </div>
        </div>
 
   <title>Displaying text directions with <code>setPanel()</code></title>
    <style>
      html, body, #map-canvas {
        height: 100%;
        margin: 0px;
        padding: 0px
      }
      #panel {
        position: absolute;
        top: 5px;
        left: 50%;
        margin-left: -180px;
        z-index: 5;
        background-color: #fff;
        padding: 5px;
        border: 1px solid #999;
      }
    </style>
    <style>
      #directions-panel {
        height: 100%;
        float: right;
        width: 390px;
        overflow: auto;
      }
      #map-canvas {
        margin-right: 400px;
      }
      #control {
        background: #fff;
        padding: 5px;
        font-size: 14px;
        font-family: Arial;
        border: 1px solid #ccc;
        box-shadow: 0 2px 2px rgba(33, 33, 33, 0.4);
        display: none;
      }
      @media print {
        #map-canvas {
          height: 500px;
          margin: 0;
        }
        #directions-panel {
          float: none;
          width: auto;
        }
      }
    </style>
    <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false"></script>
  <script>
function initialize() {
	var markers = [
	               ['1000 trancas street,napa,california', 38.32457,-122.29668],
	               ['3855 Health Sciences Drive La Jolla,CA', 32.87823,-117.22292],
	               ['8900 Wilshire Boulevard Beverly Hills, California', 34.06670,-118.38592],
	               ['University of Colorado Hospital', 39.74234,-104.84156],
	               ['montana cancer center', 46.00909,-112.54592],
	               ['675 McDermot Avenue Winnipeg',49.90318,-97.15946],
	               ['Cancer Treatment',43.80413	-120.55420],
	               ['1000 trancas street,napa,california', 38.32457,-122.29668],
	               ['1000 trancas street,napa,california', 38.32457,-122.29668],
	               ['1000 trancas street,napa,california', 38.32457,-122.29668]
	               
	               
	             ];
  var myLatlng = new google.maps.LatLng(37.548272,-121.98857);
  
  var mapOptions = {
    zoom: 4,
    center: myLatlng
  }
  var map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);

  var marker = new google.maps.Marker({
      position: myLatlng,
      map: map,
      title: 'Hello World!'
  });
  var infowindow = new google.maps.InfoWindow(), marker, i;
  for (i = 0; i < markers.length; i++) {  
      marker = new google.maps.Marker({
          position: new google.maps.LatLng(markers[i][1], markers[i][2]),
          map: map
      });
      google.maps.event.addListener(marker, 'click', (function(marker, i) {
          return function() {
              infowindow.setContent(markers[i][0]);
              infowindow.open(map, marker);
          }
      })(marker, i));
  }
}

google.maps.event.addDomListener(window, 'load', initialize);

    </script>
     <h2><center>Cancer Treatment Centers of America</center></h2>
      <!--end New Code By Sweny:  Date: 12/4/2013-->
  </head>
  <body>
    <div id="control">
      <input type="text" placeholder="Start" id="start">
      <input type="text" placeholder="End" id="end" value="${end}" readonly="readonly">
      <button class="btn" type="button" onclick="calcRoute();">Search</button>
    </div>
    <div id="directions-panel"></div>
   
    <div id="map-canvas"></div>
    <!--start New Code By Sweny:  Date: 12/4/2013-->
     <table class="table table-striped table-bordered table-condensed table-hover" align="center">
   <thead>
    <tr> 
        <th>Treatment Center</th>
        <th>State</th>
		<th>Code</th>
    </tr>
    </thead>

    <tr> 
        <th> <a href="http://www.einstein.yu.edu/cancercenter" target="_blank">Albert Einstein Cancer Center </a></th><th> Philadelphia</th><th> PA</th></tr>
          <tr><th><a href="http://www.penncancer.org" target="_blank">Abramson Cancer Center </a></th><th> Philadelphia</th><th>PA</th></tr>
          <tr><th><a href="http://www.penncancer.org" target="_blank">Abramson Cancer Center </a></th><th> Philadelphia</th><th>PA</th></tr>
<tr><th><a href="http://www.einstein.yu.edu/cancercenter" target="_blank">Albert Einstein Cancer Center </a></th><th> Bronx</th><th> NY</th></tr>
<tr><th><a href="http://www.azcc.arizona.edu" target="_blank">Arizona Cancer Center </a></th><th> Tucson</th><th> AZ</th></tr>
<tr><th><a href="http://liver.stanford.edu" target="_blank">The Asian Liver Center at Stanford University </a></th><th> Stanford</th><th> CA<br /></th></tr><tr><th><a href="http://www.karmanos.org" target="_blank">The Barbara Ann Karmanos Cancer Institute</a></th><th> Detroit</th><th> MI</th></tr><tr><th><a href="http://www.bidmc.org/" target="_blank">Beth Israel Deaconess Medical Center</a></th><th> Boston</th><th> MA</th></tr><tr><th><a href="http://www.cinj.org" target="_blank">The Cancer Institute of New Jersey</a></th><th> New Brunswick</th><th> NJ</th></tr><tr><th><a href="http://www.cpic.org" target="_blank">Cancer Prevention Institute of California </a></th><th> Fremont</th><th> CA</th></tr><tr><th><a href="http://www.crch.org" target="_blank">The Cancer Research Center of Hawaii </a></th><th> Honolulu</th><th> HI</th></tr><tr><th><a href="http://www.ctrc.net" target="_blank">Cancer Therapy &amp; Research Center </a></th><th> San Antonio</th><th> TX</th></tr><tr><th><a href="http://www.cancercenter.com" target="_blank">Cancer Treatment Centers of America </a></th><th> Schaumburg</th><th> IL</th></tr><tr><th><a href="http://cancer.case.edu" target="_blank">Case Comprehensive Cancer Center </a></th><th> Cleveland</th><th> OH</th>

<tr><th><a href="http://www.cancer.uci.edu/" target="_blank"><br />Chao Family Comprehensive Cancer Center</a></th><th> Irvine</th><th> CA</th></tr><tr><th><a href="http://www.childrenscolorado.org/" target="_blank"><br />The Childrens Hospital</a></th><th> Denver</th><th> CO</th></tr><tr><th><a href="http://www.chop.edu" target="_blank"><br/>The Childrens Hospital of Philadelphia</a></th><th> Philadelphia</th><th> PA</th></tr><tr><th><a href="http://www.childrenshospital.org" target="_blank">Childrens Hospital Boston </a></th><th> Boston</th><th> MA</th></tr><tr><th><a href="http://www.chla.org/site/c.ipINKTOAJsG/b.5207559/k.3E23/Childrens_Hospital_Los_Angeles_____LA8217s_first_and_largest_hospital_dedicated_specifically_to_treating_children_throughout_Southern_California.htm" target="_blank">Childrens Hospital Los Angeles </a></th><th> Los Angeles</th><th> CA</th></tr><tr><th><a href="http://www.childrensmemorial.org" target="_blank">Childrens Memorial Hospital</a></th><th> Chicago</th><th> IL</th></tr><tr><th><a href="http://www.childrensnational.org" target="_blank">Children's National Medical Center</a></th><th> Michigan Ave NW </th><th>Washington DC</th></tr><tr><th><a href="http://www.cincinnatichildrens.org" target="_blank">Cincinnati Children's Hospital Medical Center</a></th><th> Cincinnati</th><th> OH</th></tr><tr><th><a href="http://www.cvhp.org" target="_blank">Citrus Valley Health Partners </a></th><th> Covina</th><th> CA</th></tr><tr><th><a href="http://www.cityofhope.org/ccc" target="_blank">City of Hope National Medical Center </a></th><th> Duarte</th><th> CA</th></tr><tr><th><a href="http://www.cshl.edu" target="_blank">Cold Spring Harbor Laboratory </a></th><th> Cold Spring Harbor</th><th> NY<br /> </th></tr><tr><th><a href="http://www.bcm.edu/cancercenter" target="_blank">Dan L. Duncan Cancer Center</a></th><th> Houston</th><th> TX</th></tr><tr><th><a href="http://www.dana-farber.org" target="_blank">DanaFarber/Harvard Cancer Center </a></th><th> Boston</th><th> MA</th></tr><tr><th><a href="http://web.mit.edu/ki/" target="_blank">David H. Koch Institute for Integrative Cancer Research at MIT</a></th><th> Cambridge</th><th> MA</th></tr><tr><th><a href="http://cancer.duke.edu" target="_blank">Duke Comprehensive Cancer Center </a></th><th> Durham</th><th> NC<br /></th></tr><tr><th><a href="http://winshipcancer.emory.edu" target="_blank">Emory Winship Cancer Institute </a></th><th> Atlanta</th><th> GA<br /></th></tr><tr><th><a href="http://www.fccc.edu" target="_blank">Fox Chase Cancer Center </a></th><th> Philadelphia</th><th> PA</th></tr><tr><th><a href="http://www.cancerconsortium.org" target="_blank">Fred Hutchinson/University of Washington Cancer Consortium </a></th><th> Seattle</th><th> WA<br /> </th></tr><tr><th><a href="http://hiccc.columbia.edu" target="_blank">The Herbert Irving Comprehensive Cancer Center </a></th><th> New York</th><th> NY</th></tr><tr><th><a href="http://www.uihealthcare.org/HoldenComprehensiveCancerCenter/" target="_blank">Holden Comprehensive Cancer Center </a></th><th> Iowa City</th><th> IA</th></tr><tr><th><a href="http://www.HuntsmanCancer.org" target="_blank">Huntsman Cancer Institute </a></th><th> Salt Lake City</th><th> UT<br /> </th></tr><tr><th><a href="http://www.cancer.iu.edu" target="_blank">Indiana University Melvin and Bren Simon Cancer Center </a></th><th> Indianapolis</th><th> IN</th></tr><tr><th><a href="http://www.icr.ac.uk" target="_blank">The Institute of Cancer Research </a></th><th> London</th><th> UK<br /></th></tr><tr><th><a href="http://www.jax.org" target="_blank">The Jackson Laboratory Cancer Center </a></th><th> Bar Harbor</th><th> ME</th></tr><tr><th><a href="http://www.hopkinschildrens.org/" target="_blank">Johns Hopkins Childrens Center </a></th><th> Baltimore</th><th> MD</th></tr><tr><th><a href="http://www.cancer.ucla.edu" target="_blank">Jonsson Comprehensive Cancer Center </a></th><th> Los Angeles</th><th> CA<br /> </th></tr><tr><th><a href="http://www.kcc.tju.edu" target="_blank">Kimmel Cancer Center </a></th><th> Philadelphia</th><th> PA</th></tr><tr><th><a href="http://www.ohsucancer.com" target="_blank">Knight Cancer Institute</a></th><th> Oregon Health &amp; Science University ,Portland</th><th> OR<br /></th></tr><tr><th><a href="http://lombardi.georgetown.edu" target="_blank">Lombardi Comprehensive Cancer Center</a></th><th> Washington</th><th> DC</th></tr><tr><th><a href="http://www.lpch.org" target="_blank">Lucile Packard Childrens Hospital at Stanford</a></th><th> Palo Alto</th><th> CA<br /></th></tr><tr><th><a href="http://www.cancer.umn.edu" target="_blank">Masonic Cancer Center </a></th><th> Minneapolis</th><th> MN</th></tr><tr><th><a href="http://www.massgeneral.org/cancer" target="_blank">Massachusetts General Hospital </a></th><th> Boston</th><th> MA</th></tr><tr><th><a href="http://cancercenter.mayo.edu" target="_blank">Mayo Clinic Cancer Center </a></th><th> Scottsdale, Jacksonville</th><th> AZ, FL</th></tr><tr><th><a href="http://www.mskcc.org" target="_blank">Memorial Sloan-Kettering Cancer Center </a></th><th> New York</th><th> NY</th></tr><tr><th><a href="http://www.moffitt.org" target="_blank">Moffitt Cancer Center &amp; Research Institute </a></th><th> Tampa</th><th> FL</th></tr><tr><th><a href="http://www.mountcarmelhealth.com" target="_blank">Mount Carmel Health System </a></th><th> Columbus</th><th> OH<br /> </th></tr><tr><th><a href="http://www.cancer.dartmouth.edu" target="_blank">Norris Cotton Cancer Center </a></th><th> Lebanon</th><th> NH</th></tr><tr><th><a href="http://cancer.med.nyu.edu/" target="_blank">NYU Cancer Institute </a></th><th> New York</th><th> NY</th></tr>
<tr><th><a href="http://cancer.osu.edu/Pages/index.aspx" target="_blank">The Ohio State University Comprehensive Cancer Center</a></th><th> Columbus</th><th> OH</th></tr><tr><th><a href="http://www.oumedicine.com" target="_blank">OU Cancer Institute</a></th><th> Oklahoma City</th><th> OK<br /></th></tr><tr><th><a href="http://www.cancer.purdue.edu" target="_blank">Purdue University Center for Cancer Research </a></th><th> West Lafayette</th><th> IN<br /></th></tr><tr><th><a href="http://www.cancer.ucsd.edu" target="_blank">Rebecca and John Moores UCSD Cancer Center</a></th><th> La Jolla</th><th> CA</th></tr><tr><th><a href="http://www.cancer.northwestern.edu" target="_blank">Robert H. Lurie Comprehensive Cancer Center </a></th><th> Chicago</th><th> IL</th></tr><tr><th><a href="http://www.roswellpark.org" target="_blank">Roswell Park Cancer Institute</a></th><th> Buffalo</th><th> NY<br /></th></tr><tr><th><a href="http://www.salk.edu" target="_blank">Salk Institute Cancer Center </a></th><th> La Jolla</th><th> CA</th></tr><tr><th><a href="http://www.sanfordburnham.org/" target="_blank">Sanford Burnham Medical Research Institute</a></th><th>Orlando, La Jolla, Santa Barbara</th><th> FL ,CA ,CA </th></tr><tr><th><a href="http://www.seattlechildrens.org/" target="_blank">Seattle Children's Hospital and Regional Medical Center</a></th><th> Seattle</th><th> WA</th></tr><tr><th><a href="http://www.hopkinskimmelcancercenter.org" target="_blank">Sidney Kimmel Comprehensive Cancer Center </a></th><th> Baltimore</th><th> MD</th></tr><tr><th><a href="http://www.siteman.wustl.edu" target="_blank">Siteman Cancer Center </a></th><th> St. Louis</th><th> MO</th></tr><tr><th><a href="http://www.stjude.org" target="_blank">St. Jude Children's Research Hospital </a></th><th> Memphis</th><th> TN</th></tr><tr><th><a href="http://cancer.stanford.edu" target="_blank">Stanford Cancer Center </a></th><th> Stanford</th><th> CA<br /></th></tr><tr><th><a href="http://www.texaschildrens.org" target="_blank">Texas Childrens Hospital </a></th><th> Houston</th><th> TX<br /></th></tr><tr><th><a href="http://www3.ccc.uab.edu" target="_blank">UAB Comprehensive Cancer Center </a></th><th> Birmingham</th><th> AL</th></tr><tr><th><a href="http://www.ucdmc.ucdavis.edu/cancer" target="_blank">UC Davis Cancer Center </a></th><th> Sacramento</th><th> CA</th></tr><tr><th><a href="http://cancer.ucsf.edu" target="_blank">UCSF Helen Diller Family Comprehensive Cancer Center</a></th><th>San Francisco</th><th> CA</th></tr><tr><th><a href="http://www.unclineberger.org" target="_blank">UNC Lineberger Comprehensive Cancer Center </a></th><th> Chapel Hill</th><th> NC</th></tr><tr><th><a href="http://www-uccrc.uchicago.edu" target="_blank">University of Chicago Cancer Research Center </a></th><th>Chicago</th><th> IL</th></tr><tr><th><a href="http://www.ucdenver.edu/academics/colleges/medicalschool/centers/cancercenter/Pages/CancerCenter.aspx" target="_blank">University of Colorado Cancer Center </a></th><th> Aurora</th><th> Colorado</th></tr><tr><th><a href="http://www.mcancer.org" target="_blank">University of Michigan Comprehensive Cancer Center </a></th><th> Ann Arbor</th><th> MI</th></tr><tr><th><a href="http://cancer.unm.edu/" target="_blank">University of New Mexico Cancer Research &amp; Treatment Center </a></th><th> Albuquerque</th><th> NM</th></tr><tr><th><a href="http://www.upci.upmc.edu" target="_blank">University of Pittsburgh Cancer Institute </a></th><th> Pittsburgh</th><th> PA</th></tr><tr><th><a href="http://www.mdanderson.org" target="_blank">The University of Texas MD Anderson Cancer Center </a></th><th> Houston</th><th> TX</th></tr><tr><th><a href="http://www.healthsystem.virginia.edu/internet/cancer" target="_blank">University of Virginia Cancer Center</a></th><th> Charlottesville</th><th> VA</th></tr><tr><th><a href="http://www.cancer.wisc.edu" target="_blank">University of Wisconsin Carbone Cancer Center </a></th><th> Madison</th><th> WI</th></tr><tr><th><a href="http://www.unmc.edu/cancercenter" target="_blank">UNMC Eppley Cancer Center </a></th><th> Omaha</th><th> NB</th></tr><tr><th><a href="http://uscnorriscancer.usc.edu" target="_blank">USC/Norris Comprehensive Cancer Center </a></th><th> Los Angeles</th><th> CA<br /></th></tr><tr><th><a href="http://www.thevaleriefund.org" target="_blank">The Valerie Fund </a></th><th> Maplewood</th><th> NJ</th></tr><tr><th><a href="http://www.vicc.org" target="_blank">Vanderbilt-Ingram Cancer Center </a></th><th> Nashville</th><th> TN</th></tr><tr><th><a href="http://www.massey.vcu.edu/" target="_blank">VCU Massey Cancer Center</a></th><th> Richmond</th><th> VA</th></tr><tr><th><a href="http://www.vermontcancer.org" target="_blank">Vermont Cancer Center </a></th><th> Burlington</th><th> VT</th></tr><tr><th><a href="http://www.shc.org/Medical+Services/Cancer+Care" target="_blank">Virginia G. Piper Cancer Center at Scottsdale Healthcare </a></th><th> Scottsdale</th><th> AZ<br /></th></tr><tr><th><a href="http://www.wakehealth.edu/cancer/" target="_blank">Wake Forest Comprehensive Cancer Center </a></th><th> Winston-Salem</th><th> NC</th></tr><tr><th><a href="http://www.wistar.org" target="_blank">The Wistar Institute </a></th><th> Philadelphia</th><th> PA<br /></th></tr><tr><th><a href="http://yalecancercenter.org" target="_blank">Yale Cancer Center </a></th><th> New Haven</th><th> CT</th></tr><br /><br />
		
	</table>
	<!--end New Code By Sweny:  Date: 12/4/2013-->
    
  </head>
  <body>
    <div id="control">
      <input type="text" placeholder="Start" id="start">
      <input type="text" placeholder="End" id="end" value="${end}" readonly="readonly">
      <button class="btn" type="button" onclick="calcRoute();">Search</button>
    </div>
    <div id="directions-panel"></div>
   
    <div id="map-canvas"></div>
    
  </body>
</html> 
