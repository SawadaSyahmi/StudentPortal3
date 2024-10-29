
//constructor and setters and getters
package com.example.model;

import java.util.Random;

public class Student {
    private String name;
    private String id;
    private int grade;


    public Student(String name, String id) {
        this.name = name;
        this.id = id;
        this.grade = generateRandomGrade();

    }


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public int getGrade() {
        return grade;
    }

    private int generateRandomGrade() {
        Random random = new Random();
        return random.nextInt(100); // generates a random number between 0 and 99
    }
}