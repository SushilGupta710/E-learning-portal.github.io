/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.POJO_DAO;

/**
 *
 * @author Sushil Gupta
 */
public class CoursePOJO {
    
    private String name;
    private String category;
    private String skill;
    private String url;
    private String author;
    private String description;
    private String imagename;
    private String imagepath;

    public String getName() {
        return name;
    }

    public String getUrl() {
        return url;
    }

    public String getAuthor() {
        return author;
    }

    public String getDescription() {
        return description;
    }

    public String getImagename() {
        return imagename;
    }

    public String getCategory() {
        return category;
    }

    public String getSkill() {
        return skill;
    }

    public String getImagepath() {
        return imagepath;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setImagename(String imagename) {
        this.imagename = imagename;
    }

    public void setImagepath(String imagepath) {
        this.imagepath = imagepath;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public void setSkill(String skill) {
        this.skill = skill;
    }

}
