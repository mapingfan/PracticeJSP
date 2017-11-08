package wrap;

import java.util.Calendar;
import java.util.Locale;

public class CalenderBean {
    private int month;
    private int year;
    private String calender;

    public CalenderBean() {
        year = Calendar.getInstance().get(Calendar.YEAR);
        month = Calendar.getInstance().get(Calendar.MONTH);
        calender = null;
    }

    public int getMonth() {
        return month;
    }

    public void setMonth(int month) {
        this.month = month;
    }

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }

    public String getCalender() {
        //根据年份和月份算出当前的月的日历。
        int daysOfMonth = 0;
        if (month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12) {
            daysOfMonth = 31;
        } else if (month == 4 || month == 6 || month == 9 || month == 11) {
            daysOfMonth = 30;
        } else {
            if ((year % 4 == 0 && year % 100 != 0) || year % 400 == 0) {
                daysOfMonth = 29;
            } else {
                daysOfMonth = 28;
            }
        }
        StringBuffer sb = new StringBuffer();
        Calendar calendar = Calendar.getInstance();
        calendar.set(year, month - 1, 1);  //0代表一月.
        int dayOfWeek = calendar.get(Calendar.DAY_OF_WEEK)-1; //一代表星期日，7代表周六.
        //现在-1之后，0是周日，1-6对应星期一到星期六。
        if (dayOfWeek == 0) {
            dayOfWeek = 7;
        }
        String[][] days = new String[6][];
        for (int i = 0; i < 6; i++) {
            days[i] = new String[7];
        }
        for (int i = 0; i < days.length; i++) {
            for (int j = 0; j < days[i].length; j++) {
                days[i][j] = " ";
            }
        }
        //分配42个格子存储日期。
        //下面根据dayOfWeek来设置数组的第一行
        /**
         * if ddyOfWeek = 1; days[0][0-1) = "";
         * if dayOfWeek = 2; days[0][0-dayOfWeek) = "";
         */

        for (int i = 0; i < dayOfWeek - 1; i++) {
            days[0][i] = " ";
        }
        int index = 1;
        for (int i = dayOfWeek - 1; i < 7; i++) {
            days[0][i] = (index++)+"";
        }
        for (int i = 1; i < 6; i++) {
            for (int j = 0; j < 7; j++) {
                days[i][j] =(index++)+"";
            }
        }
        for (int i = 1; i < 6; i++) {
            for (int j = 0; j < 7; j++) {
                if (Integer.parseInt(days[i][j]) > daysOfMonth) {
                    days[i][j] = " ";
                } else {
                    days[i][j] = "&nbsp;&nbsp;" + days[i][j];
                }
            }
        }
        sb.append("<table border=1><tr>" +
                "<td>星期一</td>" +
                "<td>星期二</td>" +
                "<td>星期三</td>" +
                "<td>星期四</td>" +
                "<td>星期五</td>" +
                "<td>星期六</td>" +
                "<td>星期天</td>" +
                "</tr>");

        for (int j = 0; j < 6; j++) {
            sb.append("<tr height=50 width=60>");
            for (int k = 0; k < 7; k++) {
                sb.append("<td>" + days[j][k] + "</td>");
            }
            sb.append("</tr>");
        }
        sb.append("</table>");
        calender = new String(sb);
        return calender;
    }

}
