package com.copy4dev.ssmbase.modules.utils;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.Map;

/**
 * 发送HTTP请求<br/>
 * 默认使用POST
 */
public class HttpPostUtils {

	/**
	 * @param targetURL
	 * @param requestMethod
	 * @param urlParameters
	 * @return 服务器返回结果字符串
	 */
	public static String excuteRequest(String targetURL, String requestMethod, Map<String, String> urlParameters) {

		URL url;
		String requestParamsStr = "";
		HttpURLConnection connection = null;
		try {
			// Create connection
			url = new URL(targetURL);
			connection = (HttpURLConnection) url.openConnection();
			connection.setRequestMethod(requestMethod);
			connection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");

			for (Map.Entry<String, String> entry : urlParameters.entrySet()) {
				if (entry.getValue() != null) {
					requestParamsStr += entry.getKey() + "=" + URLEncoder.encode(entry.getValue(), "UTF-8") + "&";
				} else {
					requestParamsStr += entry.getKey() + "=''&";
				}

			}
			// 去除最后的"&"连接符
			requestParamsStr = requestParamsStr.substring(0, requestParamsStr.length() - 1);
			connection.setRequestProperty("Content-Length", "" + Integer.toString(requestParamsStr.getBytes().length));

			connection.setUseCaches(false);
			connection.setDoInput(true);
			connection.setDoOutput(true);

			// Send request
			DataOutputStream wr = new DataOutputStream(connection.getOutputStream());
			wr.writeBytes(requestParamsStr);
			wr.flush();
			wr.close();

			// Get Response
			InputStream is = connection.getInputStream();
			BufferedReader rd = new BufferedReader(new InputStreamReader(is, "utf-8"));
			String line;
			StringBuffer response = new StringBuffer();
			while ((line = rd.readLine()) != null) {
				response.append(line);
				response.append('\r');
			}
			rd.close();
			return response.toString();

		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			if (connection != null) {
				connection.disconnect();
			}
		}
	}

	/**
	 *
	 * @param targetURL
	 * @param requestMethod
	 * @param urlParameters
	 * @return 服务器返回结果字符串
	 */
	public static String excuteRequest(String targetURL, Map<String, String> urlParameters) {
		URL url;
		String requestParamsStr = "";
		HttpURLConnection connection = null;
		try {
			// Create connection
			url = new URL(targetURL);
			connection = (HttpURLConnection) url.openConnection();
			connection.setRequestMethod("POST");
			connection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");

			for (Map.Entry<String, String> entry : urlParameters.entrySet()) {
				if (entry.getValue() != null) {
					requestParamsStr += entry.getKey() + "=" + entry.getValue() + "&";
				} else {
					requestParamsStr += entry.getKey() + "=''&";
				}

			}
			// 去除最后的"&"连接符
			requestParamsStr = requestParamsStr.substring(0, requestParamsStr.length() - 1);
//			System.out.println(requestParamsStr);
			connection.setRequestProperty("Content-Length", "" + Integer.toString(requestParamsStr.getBytes().length));

			connection.setUseCaches(false);
			connection.setDoInput(true);
			connection.setDoOutput(true);

			// Send request
			DataOutputStream wr = new DataOutputStream(connection.getOutputStream());
			wr.writeBytes(requestParamsStr);
			wr.flush();
			wr.close();

			// Get Response
			InputStream is = connection.getInputStream();
			BufferedReader rd = new BufferedReader(new InputStreamReader(is, "utf-8"));
			String line;
			StringBuffer response = new StringBuffer();
			while ((line = rd.readLine()) != null) {
				response.append(line);
				response.append('\r');
			}
			rd.close();
			return response.toString();

		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			if (connection != null) {
				connection.disconnect();
			}
		}
	}
}
