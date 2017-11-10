package wrap;

import java.util.Date;

public class WrapMessage {
    String name;
    String title;
    String content;
    Date date;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public WrapMessage(String name, String title, String content) {
        this.name = name;
        this.title = title;
        this.content = content;
    }

    public WrapMessage(String name, String title, String content, Date date) {
        this.name = name;
        this.title = title;
        this.content = content;
        this.date = date;
    }

    public Date getDate() {
        return date;
    }
}