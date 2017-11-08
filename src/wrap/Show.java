package wrap;

import java.io.File;

public class Show {
    private String pic;
    private String[] picStorage;
    private int cnt = 0;

    public int getCnt() {
        return cnt;
    }

    public void setCnt(int cnt) {
        if (cnt > 2) {
            cnt = 0;
        } else if (cnt < 0) {
            cnt = 2;
        }
        this.cnt = cnt;
    }

    public String getPic() {
        File file = new File("F:\\JavaWeb项目\\JSP实践\\web\\ch7\\ex7-3\\pic");
        picStorage = file.list(new MyFileNameFilter("jpg"));
        pic = "<img src=pic/"+picStorage[cnt]+ " width=100 height=100/>";
        return pic;
    }
}
