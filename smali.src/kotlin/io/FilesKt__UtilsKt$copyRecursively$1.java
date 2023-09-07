package kotlin.io;

import java.io.File;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.r;
import w7.p;

@Metadata(d1={""}, d2={"<anonymous>", "", "<anonymous parameter 0>", "Ljava/io/File;", "exception", "Ljava/io/IOException;", "invoke"}, k=3, mv={1, 7, 1}, xi=48)
final class FilesKt__UtilsKt$copyRecursively$1
  extends Lambda
  implements p
{
  public static final 1 INSTANCE = new 1();
  
  FilesKt__UtilsKt$copyRecursively$1()
  {
    super(2);
  }
  
  public final Void invoke(File paramFile, IOException paramIOException)
  {
    r.f(paramFile, "<anonymous parameter 0>");
    r.f(paramIOException, "exception");
    throw paramIOException;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.io.FilesKt__UtilsKt.copyRecursively.1
 * JD-Core Version:    0.7.0.1
 */