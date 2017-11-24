package com.jwt.utility;
import java.io.IOException;
import java.io.InputStream;
import java.util.Calendar;
import java.util.Date;
import org.apache.commons.net.ftp.FTPSClient;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

public class UploadFile {
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
