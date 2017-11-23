package com.jwt.utility;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;
import java.net.URLConnection;
import java.util.Calendar;
import java.util.Date;

import org.apache.commons.net.ftp.FTPSClient;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

public class UploadFile {
	/*public static String newsImageUpload(String url, int count) throws IOException {
		String fileName = null;
		String aTempDir = null;
		String fileLocation = null;
		
		 * aTempDir = System.getProperty("catalina.base") +
		 * java.io.File.separator + "webapps" + java.io.File.separator + "Files"
		 * + java.io.File.separator + "News";
		 

		FTPSClient ftpClient = FTPConnection.getInstance().getConnection();

		String dirPath = "/photo/bhushan/apk";

		FTPUtil.makeDirectories(ftpClient, dirPath);
		ftpClient.setFileType(ftpClient.BINARY_FILE_TYPE);
		ftpClient.enterLocalPassiveMode();

		// File code
		String nameOfFIle;
		Calendar calendar = Calendar.getInstance();
		Date date = calendar.getTime();
		nameOfFIle = "News" + count + date.getTime();
		try {
			String[] originalFileName = url.split("\\.");
			String ext = originalFileName[originalFileName.length - 1];
			if ("jpg".equalsIgnoreCase(ext) || "gif".equalsIgnoreCase(ext) || "p   ng".equalsIgnoreCase(ext)
					|| "bmp".equalsIgnoreCase(ext) || "jpeg".equalsIgnoreCase(ext)) {
				fileName = nameOfFIle + "." + originalFileName[originalFileName.length - 1];
			} else {
				fileName = nameOfFIle + "." + "jpg";
			}

		} catch (Exception e) {
			fileName = url + "Error";
		}

		fileLocation = aTempDir + java.io.File.separator + fileName;
		new java.io.File(aTempDir).mkdirs();

		try {
			URL imageUrl = new URL(url);
			URLConnection conn = imageUrl.openConnection();
			int size = conn.getContentLength();
			double kilobytes = (size / 1024);
			if (kilobytes < 1) {
				return null;
			}
			try (InputStream imageReader = new BufferedInputStream(imageUrl.openStream());
					OutputStream imageWriter = new BufferedOutputStream(new FileOutputStream(fileLocation));) {
				int readByte;

				while ((readByte = imageReader.read()) != -1) {
					imageWriter.write(readByte);
				}
			}
		} catch (Exception e) {
			return null;
		}
		return "/Files/News/" + fileName;

	}*/

	public static String uploadPhoto(CommonsMultipartFile multipartFile, String albumName) throws IOException {
		String fileName = null;
		
		albumName = albumName.replace(' ', '_') + "_" + Calendar.getInstance().get(Calendar.YEAR);
		try {
			// File code
			String nameOfFIle;
			Calendar calendar = Calendar.getInstance();
			Date date = calendar.getTime();
			nameOfFIle = "photo" + date.getTime();
			try {
				String[] originalFileName = multipartFile.getOriginalFilename().split("\\.");
				fileName = originalFileName[0] + nameOfFIle + "." + originalFileName[originalFileName.length - 1];
			} catch (Exception e) {
				fileName = multipartFile.getOriginalFilename();
			}

			FTPSClient ftpClient =FTPConnection.getConnection();
			String dirPath = "/files/photo/";
			FTPUtil.makeDirectories(ftpClient, dirPath);
			ftpClient.setFileType(ftpClient.BINARY_FILE_TYPE);
			ftpClient.enterLocalPassiveMode();
			try (InputStream input = multipartFile.getInputStream()) {
				ftpClient.storeFile(dirPath+fileName, input);
			}
			
			ftpClient.logout();
		} catch (Exception e) {
			return null;
		}
		return "/files/photo/" + albumName + "/" + fileName;

	}

	public static String uploadVideo(CommonsMultipartFile multipartFile, String parameter) {
		String fileName = null;
		String aTempDir = null;
		String fileLocation = null;


		try {
			

			// File code
			String nameOfFIle;
			Calendar calendar = Calendar.getInstance();
			Date date = calendar.getTime();
			nameOfFIle = "videos" + date.getTime();
			try {
				String[] originalFileName = multipartFile.getOriginalFilename().split("\\.");
				fileName = originalFileName[0] + nameOfFIle + "." + originalFileName[originalFileName.length - 1];
			} catch (Exception e) {
				fileName = multipartFile.getOriginalFilename();
			}

			
			FTPSClient ftpClient =FTPConnection.getConnection();
			String dirPath = "/files/videos/";

			FTPUtil.makeDirectories(ftpClient, dirPath);
			ftpClient.setFileType(ftpClient.BINARY_FILE_TYPE);
			ftpClient.enterLocalPassiveMode();

			try (InputStream input = multipartFile.getInputStream()) {
				ftpClient.storeFile(dirPath+fileName, input);
			}
			
			ftpClient.logout();
			
			
			
			
			
		} catch (Exception e) {
			return null;
		}
		return "/files/videos/" + fileLocation;
	}

	public static String uploadNewsPhoto(CommonsMultipartFile multipartFile) {
		String fileName = null;
		
		try {
			
			// File code
			String nameOfFIle;
			Calendar calendar = Calendar.getInstance();
			Date date = calendar.getTime();
			nameOfFIle = "News" + date.getTime();
			try {
				String[] originalFileName = multipartFile.getOriginalFilename().split("\\.");
				fileName = originalFileName[0] + nameOfFIle + "." + originalFileName[originalFileName.length - 1];
			} catch (Exception e) {
				fileName = multipartFile.getOriginalFilename();
			}

			
			FTPSClient ftpClient =FTPConnection.getConnection();
			String dirPath = "/files/news/";

			FTPUtil.makeDirectories(ftpClient, dirPath);
			ftpClient.setFileType(ftpClient.BINARY_FILE_TYPE);
			ftpClient.enterLocalPassiveMode();

			try (InputStream input = multipartFile.getInputStream()) {
				ftpClient.storeFile(dirPath+fileName, input);
			}
			
			ftpClient.logout();

		} catch (Exception e) {
			return null;
		}
		return "/files/news" + fileName;
	}
}
