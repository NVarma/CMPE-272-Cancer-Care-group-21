package com.project.app;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.google.gson.JsonObject;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	private String statecode="";
	/**
	 * Simply selects the home view to render by returning its name.
	 * @throws ClassNotFoundException 
	 * @throws IllegalAccessException 
	 * @throws InstantiationException 
	 * @throws SQLException 
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) throws InstantiationException, IllegalAccessException, ClassNotFoundException, SQLException {
		logger.info("Welcome home! The client locale is {}.", locale);
		
/*		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		
		Gson gson = new Gson();
		
		String formattedDate = dateFormat.format(date);
		List<SvN> data = new ArrayList<SvN>();
		
		model.addAttribute("serverTime", formattedDate );
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		SimpleDateFormat sdfDate = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//dd/MM/yyyy
	    Date now = new Date();
	    String strDate = sdfDate.format(now);
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		// conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/testdatabase?user=testuser&password=testpassword");
		String connectionUrl = "jdbc:mysql://localhost:3306/project272-demo";
		String connectionUser = "root";
		String connectionPassword = "";
		conn = DriverManager.getConnection(connectionUrl, connectionUser, connectionPassword);
		stmt = conn.createStatement();
		String query = "select * from svn_florida";
		
		System.out.println(query);
		rs=stmt.executeQuery(query);
		
		while(rs.next())
		{
			SvN row = new SvN();
			//row.setRank(rs.getString("Rank"));
			row.setStates("US-CA");
			row.setSite(rs.getString("Site"));
			row.setStateRate(rs.getString("StateRate"));
			row.setUSRate(rs.getString("USRate"));
			data.add(row);
		}
		String jsonString = gson.toJson(data);
		System.out.println(jsonString);
		model.addAttribute("data",jsonString);*/
		return "home";
	}
	
	@RequestMapping(value="/video",method=RequestMethod.GET)
	public String getVideos(Locale locale,Model model) throws InstantiationException, IllegalAccessException, ClassNotFoundException, SQLException
	{
		System.out.println("Getting videos");
		Gson gson = new Gson();
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		List <Stories> sd = new ArrayList<Stories>();
		SimpleDateFormat sdfDate = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//dd/MM/yyyy
	    Date now = new Date();
	    String strDate = sdfDate.format(now);
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		// conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/testdatabase?user=testuser&password=testpassword");
		String connectionUrl = "jdbc:mysql://localhost:3306/project272-demo";
		String connectionUser = "root";
		String connectionPassword = "";
		/*int idx = SObjc.gUrl().indexOf("v=");
		String videoId = SObjc.getUrl().subSequence(idx+2, SObjc.getUrl().length()).toString();*/
		conn = DriverManager.getConnection(connectionUrl, connectionUser, connectionPassword);
		stmt = conn.createStatement();
		String query = "SELECT * from stories";
		rs=stmt.executeQuery(query);
		while(rs.next())
		{
		Stories s = new Stories();
		s.setVideoId(rs.getString("VideoId"));
		sd.add(s);
		}	
		System.out.println(query);
		String jsonstrng = gson.toJson(sd);
		System.out.println(jsonstrng);
		return jsonstrng;
		
	}
	
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public @ResponseBody  String getData(Locale locale, Model model) throws InstantiationException, IllegalAccessException, ClassNotFoundException, SQLException {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		
		Gson gson = new Gson();
		
		String formattedDate = dateFormat.format(date);
		List<Interactive> data = new ArrayList<Interactive>();
		
		model.addAttribute("serverTime", formattedDate );
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		SimpleDateFormat sdfDate = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//dd/MM/yyyy
	    Date now = new Date();
	    String strDate = sdfDate.format(now);
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		// conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/testdatabase?user=testuser&password=testpassword");
		String connectionUrl = "jdbc:mysql://localhost:3306/project272-demo";
		String connectionUser = "root";
		String connectionPassword = "";
		conn = DriverManager.getConnection(connectionUrl, connectionUser, connectionPassword);
		stmt = conn.createStatement();
		//String query = "SELECT StateCode,AVG(StateRate) AS StateRate,AVG(USRate) AS USRate FROM statevsnational GROUP BY StateCode";
		
		String query = "select * from usstatedatainteractivemapfemale";
		
		System.out.println(query);
		rs=stmt.executeQuery(query);
		
		while(rs.next())
		{
			Interactive row = new Interactive();
			//row.setRank(rs.getString("Rank"));
			row.setState(rs.getString("State"));
			//row.setSite(rs.getString("Site"));
			row.setRate(rs.getString("Rate"));
			row.setLowerCI(rs.getString("LowerCI"));
			row.setUpperCI(rs.getString("UpperCI"));
			row.setColor(rs.getString("Color"));
			row.setCount(rs.getString("Count"));
			row.setPopulation(rs.getString("Population"));
			data.add(row);
		}
		String jsonString = gson.toJson(data);
		System.out.println(jsonString);
		model.addAttribute("data",jsonString);
		return jsonString;
	}
	
	@RequestMapping(value = "/states/{state}", method = RequestMethod.GET)
	public String getStateCharts(Locale locale, Model model,@PathVariable("state") String StateCode) 
	{
		System.out.println("Charts");
		statecode=StateCode;
		return "states";
	}
	@RequestMapping(value = "/race", method = RequestMethod.GET)
	public @ResponseBody String getRace(Locale locale, Model model) throws InstantiationException, IllegalAccessException, ClassNotFoundException, SQLException 
	{
		Gson gson = new Gson();
		List<CancerVRace> data = new ArrayList<CancerVRace>();
		
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		SimpleDateFormat sdfDate = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//dd/MM/yyyy
	    Date now = new Date();
	    String strDate = sdfDate.format(now);
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		// conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/testdatabase?user=testuser&password=testpassword");
		String connectionUrl = "jdbc:mysql://localhost:3306/project272-demo";
		String connectionUser = "root";
		String connectionPassword = "";
		conn = DriverManager.getConnection(connectionUrl, connectionUser, connectionPassword);
		stmt = conn.createStatement();
		//String query = "SELECT StateCode,AVG(StateRate) AS StateRate,AVG(USRate) AS USRate FROM statevsnational GROUP BY StateCode";
		
		String query = "select * from ageadjustedcancerdeathratemale";
		
		System.out.println(query);
		rs=stmt.executeQuery(query);
		
		while(rs.next())
		{
			CancerVRace row = new CancerVRace();
			//row.setRank(rs.getString("Rank"));
			row.setCancerSite(rs.getString("Cancer_Sites"));
			//row.setSite(rs.getString("Site"));
			row.setAllRaceRate(rs.getString("All_Races_Rate"));
			row.setWhiteRate(rs.getString("White_Rate"));
			row.setBlackRate(rs.getString("Black_Rate"));
			row.setAIANR(rs.getString("Asian_Pacific_Islander_Rate"));
			row.setHispanic_Rate(rs.getString("Hispanic_Rate"));
			data.add(row);
		}
		String jsonString = gson.toJson(data);
		System.out.println(jsonString);
		model.addAttribute("data",jsonString);
		return jsonString;
	}
	@RequestMapping(value = "/states", method = RequestMethod.GET)
	public @ResponseBody String getStateData(Locale locale, Model model) throws InstantiationException, IllegalAccessException, ClassNotFoundException, SQLException 
	{
		System.out.println("State"+statecode);
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
	
		Gson gson = new Gson();
		
		String formattedDate = dateFormat.format(date);
		List<SvN> data = new ArrayList<SvN>();
		
		model.addAttribute("serverTime", formattedDate );
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		SimpleDateFormat sdfDate = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//dd/MM/yyyy
	    Date now = new Date();
	    String strDate = sdfDate.format(now);
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		// conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/testdatabase?user=testuser&password=testpassword");
		String connectionUrl = "jdbc:mysql://localhost:3306/project272-demo";
		String connectionUser = "root";
		String connectionPassword = "";
		conn = DriverManager.getConnection(connectionUrl, connectionUser, connectionPassword);
		stmt = conn.createStatement();
		String query = "SELECT * FROM statevsnational where StateCode='"+statecode+"'";
		
		System.out.println(query);
		rs=stmt.executeQuery(query);
		
		while(rs.next())
		{
			SvN row = new SvN();
			//row.setRank(rs.getString("Rank"));
			row.setStates(rs.getString("StateCode"));
			row.setSite(rs.getString("Site"));
			row.setStateRate(rs.getString("StateRate"));
			row.setUSRate(rs.getString("USRate"));
			data.add(row);
		}
		String jsonString = gson.toJson(data);
		System.out.println(jsonString);
		model.addAttribute("data",jsonString);
		return jsonString;
	}
	