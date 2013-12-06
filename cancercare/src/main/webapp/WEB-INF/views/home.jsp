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

     var _gaq = _gaq || [];
      _gaq.push(['_setAccount', 'UA-23019901-1']);
      _gaq.push(['_setDomainName', "cancercare.com"]);
        _gaq.push(['_setAllowLinker', true]);
      _gaq.push(['_trackPageview']);

     (function() {
       var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
       ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
       var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
     })();

    </script>
  <script type="text/javascript" async="" src="./Bootswatch  United_files/bsa.js"></script><script type="text/javascript" src="chrome-extension://bfbmjmiodbnnpllbbbfblcplfjjepjdn/js/injected.js"></script>

<script type="text/javascript" src="<c:out value="resources/js/jquery-1.10.2.js" />"></script>
<script type="text/javascript" src="http://www.google.com/jsapi"></script>
<script type = "text/javascript">
	google.load('visualization', '1.1', {packages: ['geochart']});
</script>
<script type="text/javascript">
	function drawVisualization() {
		finalarray =[];
		finalarray.push(['States','Rate','Count']);
		$.ajax({

			url : "/app/home",
			type : "GET",
			dataType : "JSON",
			asyc: false,
			success : function(data) {
			$.each(data, function(i, obj)
			{
				array = [];
				array.push(obj.State);
				array.push(parseFloat(obj.Rate));
				array.push(parseFloat(obj.Count));
				finalarray.push(array);
				
			});
			console.log(finalarray);
			drawChart(finalarray);
			}
		});
		 
	}
	
	function drawChart(finalarray)
	{
		var data = google.visualization.arrayToDataTable(finalarray);
		 var options = {region: 'US', resolution: 'provinces'};

	     var chart = new google.visualization.GeoChart(document
					.getElementById('visualization'));
	     chart.draw(data, options);
	     google.visualization.events.addListener(chart, 'select', function() {
	    	    var selectedItem = chart.getSelection()[0];
	    	    if (selectedItem) {
	    	      console.log("Event:"+ data.getValue(selectedItem.row, 0));
	    	      var states=data.getValue(selectedItem.row, 0);
	    	      window.open('http://localhost:8080/app/states/' + states);
	    	    }
	    	  });
	}
	//google.setOnLoadCallback(drawVisualization);
</script>
</head>
<body style="font-family: Arial; border: 0 none;"
	onload="javascript:drawVisualization();" mthod="post" action="/app/stateCharts">
	<div class="navbar navbar-default navbar-fixed-top">
      <div class="container">
        <div class="navbar-collapse collapse" id="navbar-main">
          <ul class="nav navbar-nav">
            <li class="dropdown">
              <a class="dropdown-toggle" data-toggle="dropdown" href="http://localhost:8080/app" id="themes">Home<span class="caret"></span></a>
         \
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
          <div class="col-lg-6">
           <h1><font color="#4863A0">Rise Above Cancer</font></h1>
              <p class="lead">Join us in the fight against Cancer!</p>
              <h4 align="justify"><font color="#98AFC7"> Below is an interactive online map illustrating the prevalence of Cancer in the United States. The state map views allow users to visually explore the Cancer epidemic.
               Causes and symptoms of different types of cancer are shown in chart to help the patient to discover it in early stage.We also provide users with motivating stories of Cancer survivors; provide information regarding the various low cost screening centers in 
               the United States.We have also provided a forum for users to ask any questions regarding the Cancer epidemic.</h4>
 <h4>The Cancer Statistics data has been collected from Center for Decease Control and Prevention (CDC), USA. Most of these statistics presented are based on United States Cancer Statistics (USCS) 2010 report.</font></h4>
   
        </div>
        </div>
        </div>
        </div>
 <table width=100%>
 <tr>
 <td width=50%>
 <div id="visualization" style="width: 900px; height: 500px;"></div></td>
          </tr>
 </table>
 
</body>
</html>
