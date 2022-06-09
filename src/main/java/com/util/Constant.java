package com.util;

public class Constant {


    public static String VERSION = "0.1a";
    public static String GRANT_SAMPLE = "general";

    /**
     * Time Constant
     */
    public static final int SEC = 60;
    public static final int MIN = 60;
    public static final int HOUR = 24;
    public static final int DAY = 30;
    public static final int MONTH = 12;

    /* aws cdn path */
    public static class CDN_PATH {
        public static final String TEST = "test/";
        public static final String SMART_EDITOR = "temp/";
    }

    public static final String DATABASE_SOURCE = "LOCAL1";

    /* User Suspend Days Constant */
    public static final int SUSPEND_1WEEK = 7;
    public static final int SUSPEND_1MONTH = 31;
    public static final int SUSPEND_3MONTH = 93;
    public static final int SUSPEND_6MONTH = 186;
    public static final int SUSPEND_FOREVER = -1;

}