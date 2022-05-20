package com.model;

import com.fasterxml.jackson.annotation.JsonAutoDetect;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;

import java.util.ArrayList;

@Data
@Setter
@Getter
@JsonAutoDetect
public class UserContainer {
    private int no;
    private UserTest usertest;
    private ArrayList<UserTest> userTests;
}