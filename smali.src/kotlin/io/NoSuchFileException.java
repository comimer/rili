package kotlin.io;

import java.io.File;
import kotlin.Metadata;

@Metadata(d1={""}, d2={"Lkotlin/io/NoSuchFileException;", "Lkotlin/io/FileSystemException;", "file", "Ljava/io/File;", "other", "reason", "", "(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V", "kotlin-stdlib"}, k=1, mv={1, 7, 1}, xi=48)
public final class NoSuchFileException
  extends FileSystemException
{
  public NoSuchFileException(File paramFile1, File paramFile2, String paramString)
  {
    super(paramFile1, paramFile2, paramString);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.io.NoSuchFileException
 * JD-Core Version:    0.7.0.1
 */