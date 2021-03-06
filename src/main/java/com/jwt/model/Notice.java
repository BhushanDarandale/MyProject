package com.jwt.model;
// Generated Nov 24, 2017 10:32:33 AM by Hibernate Tools 4.3.5.Final

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * Notice generated by hbm2java
 */
@Entity
@Table(name = "notice", catalog = "babupateweb")
public class Notice implements java.io.Serializable {

	private Integer id;
	private String noticetext;
	private String status;
	private Date date;

	public Notice() {
	}

	public Notice(String noticetext, String status, Date date) {
		this.noticetext = noticetext;
		this.status = status;
		this.date = date;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "id", unique = true, nullable = false)
	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@Column(name = "noticetext", length = 1000)
	public String getNoticetext() {
		return this.noticetext;
	}

	public void setNoticetext(String noticetext) {
		this.noticetext = noticetext;
	}

	@Column(name = "status", length = 20)
	public String getStatus() {
		return this.status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "date", length = 10)
	public Date getDate() {
		return this.date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

}
