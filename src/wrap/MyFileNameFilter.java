package wrap;

import java.io.File;
import java.io.FilenameFilter;

public class MyFileNameFilter implements FilenameFilter {
    private String string;

    public MyFileNameFilter(String string) {
        this.string = "."+string;
    }

    @Override
    public boolean accept(File dir, String name) {
        return name.endsWith(this.string);
    }
}
