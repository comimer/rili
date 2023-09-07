package kotlin.io;

import java.io.File;
import kotlin.Metadata;

@Metadata(d1={""}, d2={"Lkotlin/io/TerminateException;", "Lkotlin/io/FileSystemException;", "file", "Ljava/io/File;", "(Ljava/io/File;)V", "kotlin-stdlib"}, k=1, mv={1, 7, 1}, xi=48)
final class TerminateException
  extends FileSystemException
{
  public TerminateException(File paramFile)
  {
    super(paramFile, null, null, 6, null);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.io.TerminateException
 * JD-Core Version:    0.7.0.1
 */