package wrap;

import java.io.*;

public class Write {
    private String directoryName;
    private String fileName;
    private String content;
    private boolean successful = false;

    public boolean isSuccessful() {
        return successful;
    }

    public void setDirectoryName(String directoryName) {
        this.directoryName = directoryName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    public String getContent() {
        return content;
    }

    public String getDirectoryName() {
        return directoryName;
    }

    public String getFileName() {
        return fileName;
    }

    public void setSuccessful(boolean successful) {
        this.successful = successful;
    }

    public void setContent(String content) {

        File file = new File(directoryName + "/" + fileName);
        if (!file.exists()) {
            file.getParentFile().mkdir();
            try {
                file.createNewFile();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        try {
            BufferedWriter bw = new BufferedWriter(new FileWriter(file));
            bw.write(content);
            bw.flush();
            bw.close();
            successful = true;
        } catch (IOException e) {
            e.printStackTrace();
        }
        this.content = content;
    }
}
