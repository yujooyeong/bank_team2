package team02;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.util.List;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

import com.google.gson.Gson;

public class BankListRequest {
	public static String bankListRequest(double x, double y, int radius) {
		String apiKey = "AIzaSyCJcj-21SFDJR0ydDZVdkLMo3sYsbEz2MA";
		BufferedReader bufferedReader = null;
		String jsonStr = null;
		
		
		try {
			//api 요청 링크 만들기
			String requestUrl = "https://maps.googleapis.com/maps/api/place/nearbysearch/json";
			requestUrl += "?location=" + x + "," + y;
			requestUrl += "&radius=" + radius;
			requestUrl += "&keyword=" +URLEncoder.encode("부산은행", "UTF-8");
			requestUrl += "&key=" + apiKey;
			
			URL url = new URL(requestUrl);
			URLConnection conn = url.openConnection();
			InputStream is = conn.getInputStream();
			InputStreamReader isr = new InputStreamReader(is, "UTF-8");
			bufferedReader = new BufferedReader(isr);
			
			try {
				JSONParser jsonParser = new JSONParser();
				JSONObject jsonObject = (JSONObject)jsonParser.parse(bufferedReader);
				
				jsonStr = jsonObject.toJSONString();
			} catch(Exception e) {
				e.printStackTrace();
			}
			
		} catch(MalformedURLException e) {
			e.printStackTrace();
		} catch(IOException e) {
			e.printStackTrace();
		}finally {
			try {
				bufferedReader.close();
			} catch(IOException e){
				
			}
		}
		Gson gson = new Gson();
		
		ResultSet resultset = gson.fromJson(jsonStr, ResultSet.class);
		String resultStr = null;
		
		List<Results> resultList = resultset.getResults();
		
		for(int i=0;i<resultList.size();i++) {
			String name = resultList.get(i).getName();
			Geometry locationset = resultList.get(i).getGeometry();
			Double lng = locationset.getLocation().getLng();
			Double lat = locationset.getLocation().getLat();
			if(i == 0) {
				resultStr = name  + " ,";
				resultStr += lng.toString() + " ,";
				resultStr += lat.toString()  + " ,";
			}
			else if(i != (resultList.size()-1)) {
				resultStr += name + " ," + lng.toString() + " ," + lat.toString() + " ,";
			}
			else {
				resultStr += name + " ," + lng.toString() + " ," + lat.toString();
			}
		}
		return resultStr;
	}
}
