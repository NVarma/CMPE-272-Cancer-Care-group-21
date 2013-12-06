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
<body style="font-family: Arial; border: 0 none;">
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
              <ul class="dropdown-menu" aria-labelledby="themes">
                <li><a tabindex="-1" href="http://bootswatch.com/default/">Default</a></li>
                <li class="divider"></li>
                <li><a tabindex="-1" href="http://bootswatch.com/amelia/">Amelia</a></li>
                <li><a tabindex="-1" href="http://bootswatch.com/cerulean/">Cerulean</a></li>
                <li><a tabindex="-1" href="http://bootswatch.com/cosmo/">Cosmo</a></li>
                <li><a tabindex="-1" href="http://bootswatch.com/cyborg/">Cyborg</a></li>
                <li><a tabindex="-1" href="http://bootswatch.com/flatly/">Flatly</a></li>
                <li><a tabindex="-1" href="http://bootswatch.com/journal/">Journal</a></li>
                <li><a tabindex="-1" href="http://bootswatch.com/readable/">Readable</a></li>
                <li><a tabindex="-1" href="http://bootswatch.com/simplex/">Simplex</a></li>
                <li><a tabindex="-1" href="http://bootswatch.com/slate/">Slate</a></li>
                <li><a tabindex="-1" href="http://bootswatch.com/spacelab/">Spacelab</a></li>
                <li><a tabindex="-1" href="./Bootswatch  United_files/Bootswatch  United.htm">United</a></li>
                <li><a tabindex="-1" href="http://bootswatch.com/yeti/">Yeti</a></li>
              </ul>
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
            <li><a href="http://builtwithbootstrap.com/" target="_blank">Donate</a></li>
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
            <br><font color="#C0C0C0">
             <b> You can now directly contact the doctors and solve your problems.
            Send your problems via email  and you will get responses 
            from well-known doctors of the town.<br></b></font>
            
        </div>
        </div>
        </div>
        </div>
 
 <center>
        
        
            <table>
            
            
           <tr> <td><i><font color="#A52A2A" >To &nbsp &nbsp &nbsp&nbsp</td> 
              <td> <i><select name="DocName">
<option value="hardikjoshi90@gmail.com"><font color="#A52A2A">Dr. Swati Mangekar</option>
<option value="hardikjoshi90@gmail.com"><font color="#A52A2A">Dr. Ronald</option>
<option value="hardikjoshi90@gmail.com"><font color="#A52A2A">Dr. Howard</option>

</select></td></tr>
<br>
<br>

                    <td><i><font color="#A52A2A">Full Name</td>
                    <td><input type=text name=fullname></td>
                </tr>
                
                <br>
                <br>
                <tr>
                    <td><i><font color="#A52A2A">Subject</td>
                    <td><input type=text name=subject></td>
                </tr>
                <tr>
                    <td><i><font color="#A52A2A">Message</td>
                    <td><!-- <input type=textarea name=msg> -->
                    <textarea rows="5" cols="50" name="msg"></textarea>
                    </td>
                </tr>
                <tr>
                    <td><input type="submit" onclick="al()"></td>
                    
                </tr></font>
            </table>
        
    </center>
 
  
</body>
</form>
</html>




<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Forum</title>
<script>
function al()
{
	alert("email sent");
	}
</script>
</head>
<form method="post" action="/app/forum" ModelAttribute="forum">
<body>
<center>
        
        
            <table>
           <tr> <td>To</td>
                <select name="DocName">
<option value="shah.naiya8291@gmail.com">naiya</option>
<option value="hardikjoshi90@gmail.com">hardik</option>
</select></tr>
<br>
                    <td>Full Name</td>
                    <td><input type=text name=fullname></td>
                </tr>
                <tr>
                    <td>Subject</td>
                    <td><input type=text name=subject></td>
                </tr>
                <tr>
                    <td>Message</td>
                    <td><input type=text name=msg></td>
                </tr>
                <tr>
                    <td><input type="submit" onclick="al()"></td>
                    
                </tr>
            </table>
        
    </center> 
</body></form>
</html> --%>