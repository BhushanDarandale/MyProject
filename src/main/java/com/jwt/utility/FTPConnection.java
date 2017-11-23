package com.jwt.utility;

import java.io.IOException;
import java.net.SocketException;
import java.security.NoSuchAlgorithmException;

import org.apache.commons.net.ftp.FTPSClient;

public class FTPConnection {

	
	

	public static FTPSClient getConnection() throws IOException, NoSuchAlgorithmException {
		String user = "bhushandar";
		String pass = "bhushan1234";
		  FTPSClient ftpClient=new FTPSClient();
		ftpClient.connect("babupate.com");
		ftpClient.login(user, pass);

		return ftpClient;
	}

}
