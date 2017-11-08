package wrap;

import java.io.*;

public class ReadFile {
    private String directoryName;
    private String fileName = null;
    private String allFileNames;
    private String content;

    public String getContent() {
        File file = new File(directoryName+"/"+fileName);
        if (file.isFile()) {
            try {
                BufferedReader br = new BufferedReader(new FileReader(file));
                StringBuffer sb = new StringBuffer();
                String line;
                while ((line = br.readLine()) != null) {
                    sb.append(line+"\n");
                }
                content = new String(sb);
            } catch (FileNotFoundException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }
        } else {
            content = "";
        }
        return content;
    }

    public ReadFile() {
    }

    public String getDirectoryName() {
        return directoryName;
    }

    public void setDirectoryName(String directoryName) {
        this.directoryName = directoryName;
    }

    public String getFileName() {
        return fileName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    public String getAllFileNames() {
        File file = new File(directoryName);
        if (file.isDirectory()) {
            String[] files = file.list();
            StringBuffer sb = new StringBuffer();
            for (int i = 0; i < files.length; i++) {
                sb.append(files[i] + " ");
            }
            allFileNames = new String(sb);
        } else {
            allFileNames = null;
        }

        return allFileNames;
    }

}
