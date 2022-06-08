package com.model.basic.alarm;

import lombok.Data;

@Data
public class Alarm {
    private int no;
    private AlarmCategory category;
    private String content;
    private String reg_date;
    private boolean read_status;
    private int user_no;
}
