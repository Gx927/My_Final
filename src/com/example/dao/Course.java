package com.example.dao;

public class Course {
	private int id;
	private String courseName;
	private  String teaName;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCourseName() {
		return courseName;
	}

	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}

	public String getTeaName() {
		return teaName;
	}

	public void setTeaName(String teaName) {
		this.teaName = teaName;
	}

	@Override
	public String toString() {
		return
				"课程编码：" +id +" "+
						"任课教师：" +teaName +" "+
				"课程名：" +courseName+"\n";
	}
}
