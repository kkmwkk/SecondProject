package com.go.myapp.dto;

import java.sql.Timestamp;

import java.util.Date;

public class Board2 {

   private int no;
   // 아이디
   private String id;
   // 성별
   private String sex;
   // 나이
   private int age;
   // 전공
   private String major;
   // MBTI
   private String mbti;
   // 포지션
   private String position;
   // 소주
   private String soju;


   public Board2() {



//   public Board() {
//   }

//   @Override
//   public String toString() {
//      return "Board [no=" + no + ", id=" + id + ", title=" + title + ", content=" + content + ", date=" + date + "]";
//   }

}

   public int getNo() {
      return no;
   }

   public void setNo(int no) {
      this.no = no;
   }

   public String getId() {
      return id;
   }

   public void setId(String id) {
      this.id = id;
   }

   public String getSex() {
      return sex;
   }

   public void setSex(String sex) {
      this.sex = sex;
   }

   public int getAge() {
      return age;
   }

   public void setAge(int age) {
      this.age = age;
   }

   public String getMajor() {
      return major;
   }

   public void setMajor(String major) {
      this.major = major;
   }

   public String getMbti() {
      return mbti;
   }

   public void setMbti(String mbti) {
      this.mbti = mbti;
   }
   
   public String getPosition() {
      return position;
   }

   public void setPosition(String position) {
      this.position = position;
   }

   public String getSoju() {
      return soju;
   }

   public void setSoju(String soju) {
      this.soju = soju;
   }
}