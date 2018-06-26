package team02;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

import com.google.gson.Gson;

public class ExchageRate {
	public static String getExchagerate() {
		String apiKey = "EiAyX06cQhlyPCKvuPda7HXcsKiaMfi3";
		BufferedReader bufferedReader = null;
		String jsonStr = null;
		Date current = new Date();
		SimpleDateFormat transFormat = new SimpleDateFormat("yyyyMMdd");
		String currentdate = transFormat.format(current);
		
		try {
			//api 요청 링크 만들기
			String requestUrl = "https://www.koreaexim.go.kr/site/program/financial/exchangeJSON";
			requestUrl += "?authkey=" + apiKey;
			requestUrl += "&searchdate=" + currentdate;
			requestUrl += "&data=AP01";
			
			URL url = new URL(requestUrl);
			URLConnection conn = url.openConnection();
			InputStream is = conn.getInputStream();
			InputStreamReader isr = new InputStreamReader(is, "UTF-8");
			bufferedReader = new BufferedReader(isr);
			
			try {
				JSONParser jsonParser = new JSONParser();
				JSONObject jsonObject = (JSONObject)jsonParser.parse(bufferedReader);
				
				jsonStr = jsonObject.toJSONString();
				System.out.println(jsonStr);
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
		String resultStr = null;
		System.out.println(jsonStr);
		return resultStr;
	}
}
