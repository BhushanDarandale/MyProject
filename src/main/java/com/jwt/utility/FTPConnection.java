package com.jwt.utility;

import java.io.IOException;
import java.net.SocketException;
import java.security.NoSuchAlgorithmException;

import org.apache.commons.net.ftp.FTPSClient;

public class FTPConnection {  
	
	private static FTPConnection connection;
	private static FTPSClient ftpClient;
	private String user="bhushandar";
	private String pass="bhushan1234";
	
	
	/*private FTPConnection(){
		try {
			ftpClient.connect("babupate.com");
			ftpClient.login(user, pass);
		} catch (IOException e) {
		}
	}*/
	public static FTPSClient getConnection() throws  IOException {
		String user="bhushandar";
		String pass="bhushan1234";
		ftpClient.connect("babupate.com");
		ftpClient.login(user, pass);
		
        return ftpClient;
    }
	   public static FTPConnection getInstance() {
	        if (connection == null) {
	        	connection = new FTPConnection();
	        } else
				try {
					if (connection.getConnection().logout()) {
						connection = new FTPConnection();
					}
				} catch (IOException e) {
					e.printStackTrace();
				}

	        return connection;
	    }
	
	
	
	/* public static void main(String args[]) throws NoSuchAlgorithmException, SocketException, IOException {  
		 FTPSClient ftpClient = new FTPSClient();

		  

	   
	   
	   
	   String dirPath = "/photo/bhushan/apk";
	   
       FTPUtil.makeDirectories(ftpClient, dirPath);
       
       System.out.println("Created");
	  // return ftpClient;  
*/
	 }  
	