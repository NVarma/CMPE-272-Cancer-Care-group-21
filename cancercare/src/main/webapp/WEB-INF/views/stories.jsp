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
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    
<script type="text/javascript">
function getVideos()
{
	var str = document.getElementById('url').value;
	var s = "Hello World!";
	var n = str.search("v=");
	var sub = str.substring(n+2,str.length);
	/* document.getElementById('videoId').value=sub;
	alert(document.getElementById('videoId').value); */
	
	
	
	 $.ajax({
		url : "/app/stories",
		type : "POST",
		dataType : "JSON",
		asyc: false,
		success : function(data) {
		$.each(data, function(i, obj)
		{
			array = [];
			array.push(obj.videoId);
			finalarray.push(array);
			
		});
		console.log(finalarray);
		}
	}); 
	
	var iDiv = document.createElement('div');
	iDiv.id = 'ytplayer2';
	iDiv.className = 'block';
	document.getElementsByTagName('body')[0].appendChild(iDiv);

	
	/* for(i=0;i<finalarray.length;i++)
	{ */
	var iFrame = document.createElement('iframe');
	iFrame.id = 'player2';
	iFrame.type = 'text/html';
	iFrame.width="640";
	iFrame.height="390";
	iFrame.src="http://www.youtube.com/embed/"+sub+"?enablejsapi=1&origin=http://example.com";
	iFrame.frameborder=0;
	
	document.getElementsByTagName('body')[0].appendChild(iFrame);
	/* } */
}
</script>
</head>



<body style="font-family: Arial; border: 0 none;">
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


    
        
          
            <h1><font color="#4863A0">Rise Above Cancer</font></h1>
              <p class="lead">Join us in the fight against Cancer!</p>
              <br>
             <font color="#C0C0C0"><b>  Cancer survivors cope with their new life in different ways. While some prefer to put their experiences behind them, others choose to draw on them, and get involved with cancer-related activities or causes. There is a wide range of ways to help others, whether it's taking someone to a doctor's appointment, or deciding to start a Web site. Below are some inspiring stories of survivors who took what they went through with cancer and turned it into something positive. Each individual found a purpose in sharing their experience and giving back to others. Perhaps their stories will inspire you and offer hope that there is truly life after cancer.
            <br>
            <font color ="#C48189"> <b><i>life can change in an instant, and its up to us to make a difference
            </font></b></font><br>
            

<div id="ytplayer"></div>
<div id="ytplayer1"></div>

<!-- <iframe id="player" type="text/html" width="640" height="390"
  src="http://www.youtube.com/embed/7xReQKGIAOc?enablejsapi=1&origin=http://example.com"
  frameborder="0"></iframe>
 -->
 <br>
 <br>
 Add Youtube URL: <input type="url" name="url" id="url"><input type="submit" onclick="getVideos();">
 <input type="text" name="videoId" hidden="true">
<div class="container">

      <div class="row section">
        <div class="col-lg-12">
		
	
	<br>
	<br>
		
		<iframe width="350" height="345"
         src="https://www.youtube.com/embed/N1gS6QMblv4">
         </iframe>
		 <iframe width="350" height="345"
         src="https://www.youtube.com/embed/eiy7J35x6WI">
         </iframe>
		 <iframe width="350" height="345"
         src="https://www.youtube.com/embed/4QfGDzxvdkM">
         </iframe>
		 <br>
		 <br>
		
          <h2><font color="#C48189">A Survivor's Story</font></h2>
		  <h3><font color="#C48189"> Tamika Felder</font> </h3>
		  <h4> Survivor and advocate</h4>
		 <!-- <img border="2" src="C:\Nikita_PC Data\sjsu\Studies\cmpe 272 enterprise software overview\272 project start work\images\felder.jpg"  width="100" height="100"> -->
          <p> Diagnosed with cervical cancer at age 25, Tamika Felder had to deal with the stigma of a disease linked to an STD.</p> 
		  <p> "I was surrounded by people who were very supportive and wonderful. But there were also a few people who said cruel things because my cancer was linked to a sexually transmitted virus," she recalls. "That was painful, and those people either ended up being cut out of my life or their place in my life was minimal."</p>   
		  <p>Tamika had to have her cervix and uterus removed, and had chemotherapy and radiation to kill all the cancer cells. To this day, the most difficult part of the experience was realizing she'd never be able to give birth to a child. But financial strain was also an issue, due to all the medical expenses. Before cancer, she had been making a name for herself in the broadcasting industry, but after her diagnosis she was unable to pay her bills. With her career on hold, issues with money, and her social outlets affected, Tamika gave up on life. </p> 	  
		  <p> "It's so easy to give up," she says. "I remember kissing my mom and my best friend goodbye in the hospital days after my surgery. The pain was unbearable and I just wanted it to be over with. But they wouldn't let me give up. They provided the strength I needed to continue fighting. And eventually, I realized cancer didn't have to be a death sentence."</p> 
		  <p> Tamika made the decision to face the disease head on, and she fought for her life as hard as she could. If she lost her life, she decided, it wouldn't be because she gave up. Today, 10 years after her surgery and treatment, Tamika is once again working in broadcasting, as a television reporter and producer in Washington, D.C.</p>
		  <p> "I had an amazing support network and knew that I was in good hands with my health care," she says. "So my coping strategies became research and understanding for my disease. The more I learned, the more I was determined to beat it."</p>
		  <h4> "I know that tomorrow is truly not promised. That life can change in an instant, and that it is up to me to make a difference".</h4>
		  <p>But at the same time, she's thankful to be here every day, aware that tomorrow isn't guaranteed. She started <a href="http://www.tamikaandfriends.org/">Tamika and Friends</a>, an advocacy organization, to offer financial help to women with cervical cancer and to educate people about the disease. Tamika now reaches women on a national level, getting the word out and giving support. </p>
		  <p> "Cancer completely changed my life," she says. "Once I finally embraced it and became a cancer advocate, it truly healed me, inside and out. My cancer experience has defined who I am now as a person. I know that tomorrow is truly not promised. That life can change in an instant, and that it's up to me to make a difference."</p>	  <br> <br>

		  <h3> <font color="#C48189">Staci Wright</font></h3>
		  <h4> Helping kids regain their self image</h4>
		 <!--  <img border="2" src="C:\Nikita_PC Data\sjsu\Studies\cmpe 272 enterprise software overview\272 project start work\images\wright.jpg"  width="100" height="100"> -->
          <p align="justify"> Staci Wright was in the eighth grade when she began having terrible headaches. The 13-year-old girl had been healthy, happy, and active all her life, playing soccer since kindergarten. But life changed overnight when she was diagnosed with Ewing sarcoma, a type of bone cancer, in her skull. 
		   The treatment was 10 months of chemotherapy, along with 5 weeks of radiation. "For me, the hardest part of the cancer battle was that my pain was hurting my whole family," she recalls. "It put so much stress on my parents and older brother. Luckily my sister was too young to really realize what was going on." 
		  normal kid. The support of her family and friends helped her get through many painful times during the year. But even so, there were days when she felt overwhelmed. 
		   "Sometimes it felt like I was all by myself in this battle," she says. "I realized others couldn't fathom what I was going through, and so there were times when I just wanted to be left alone."</p>
		   Hair loss from chemotherapy isn't easy for any patient. But for a teenage girl, it can be devastating. Staci felt sad and depressed with losing her hair and didn't want to go to school. "I had a really hard time with my hair loss. But there was nothing I could do about it except move on to more important things, like surviving," she says. Unfortunately Katie's radiation killed all the hair cells on a patch of skin on the back of her head, causing her hair loss to be permanent.
		   Fortunately her mother, Debbie, learned of a hair system that stays in place, made of real hair attached to material that looks like a scalp. Staci loved her new hair but was concerned about the other kids she met at the children's hospital who were still dealing with baldness. "It's tough for people my age to lose their hair," she says. "They lose their self-esteem with it."
		  <h4> "Life is something that cannot be taken for granted."</h4>
		  That's when Staci and Debbie decided to do something to help these kids. They established the <a href="http://angelhairfoundation.org/">Angel Hair Foundation</a> , a non-profit organization that purchases hair systems for kids and teens. Through hard work and getting the word out, the foundation is thriving and helping kids with cancer everywhere feel better about losing their hair. 
		   Staci is now doing well, playing soccer, hanging out with her friends, and attending the University of Oregon. She believes she'll always have insecurities about her permanent hair loss but trusts that she'll know how to deal with them when they arise. She's excited about what life has to bring to her and plans to become a dietician. More important, she knows that true friends will love her no matter what her hair looks like.
		   "To me, life is something that can't be taken for granted. I can't be that little shy girl that doesn't push the limit every once in a while," she says. "I often think about how cancer affected my life, about how I developed as a person through this experience. Cancer made me realize what is important in life and made me the more mature person I am today. Carpae'diem!"
		 </p> 
		  
		
        </div>
      </div>
      
      <hr>

</body>

</html>




<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
function display()
{
	var str = document.getElementById('url').value;
	var s = "Hello World!";
	var n = str.search("v=");
	var sub = str.substring(n+2,str.length);
	alert(sub);
	
	var iDiv = document.createElement('div');
	iDiv.id = 'ytplayer2';
	iDiv.className = 'block';
	document.getElementsByTagName('body')[0].appendChild(iDiv);

	iDiv.innerHTML = "I'm the first div";
	
	var iFrame = document.createElement('iframe');
	iFrame.id = 'player2';
	iFrame.type = 'text/html';
	iFrame.width="640";
	iFrame.height="390";
	iFrame.src="http://www.youtube.com/embed/"+sub+"?enablejsapi=1&origin=http://example.com";
	iFrame.frameborder=0;
	
	document.getElementsByTagName('body')[0].appendChild(iFrame);

}
</script>
</head>
<form method="post" action="/app/stories" modelAttribute="app")>
<body>

<div id="ytplayer"></div>
<div id="ytplayer1"></div>

<iframe id="player" type="text/html" width="640" height="390"
  src="http://www.youtube.com/embed/7xReQKGIAOc?enablejsapi=1&origin=http://example.com"
  frameborder="0"></iframe>
Add Youtube URL: <input type="url" name="url" id="url"><input type="submit" onclick="display()">
</body>
</form>
</html> --%>
