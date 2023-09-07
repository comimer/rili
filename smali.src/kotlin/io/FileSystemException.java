package kotlin.io;

import java.io.File;
import java.io.IOException;
import kotlin.Metadata;

@Metadata(d1={""}, d2={"Lkotlin/io/FileSystemException;", "Ljava/io/IOException;", "file", "Ljava/io/File;", "other", "reason", "", "(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V", "getFile", "()Ljava/io/File;", "getOther", "getReason", "()Ljava/lang/String;", "kotlin-stdlib"}, k=1, mv={1, 7, 1}, xi=48)
public class FileSystemException
  extends IOException
{
  private final File file;
  private final File other;
  private final String reason;
  
  public FileSystemException(File paramFile1, File paramFile2, String paramString)
  {
    super(b.a(paramFile1, paramFile2, paramString));
    this.file = paramFile1;
    this.other = paramFile2;
    this.reason = paramString;
  }
  
  public final File getFile()
  {
    return this.file;
  }
  
  public final File getOther()
  {
    return this.other;
  }
  
  public final String getReason()
  {
    return this.reason;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.io.FileSystemException
 * JD-Core Version:    0.7.0.1
 */