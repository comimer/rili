package kotlin.io;

import java.io.File;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.r;
import kotlin.u;
import w7.p;

@Metadata(bv={}, d1={""}, d2={"Ljava/io/File;", "f", "Ljava/io/IOException;", "e", "Lkotlin/u;", "invoke", "(Ljava/io/File;Ljava/io/IOException;)V", "<anonymous>"}, k=3, mv={1, 7, 1})
final class FilesKt__UtilsKt$copyRecursively$2
  extends Lambda
  implements p<File, IOException, u>
{
  FilesKt__UtilsKt$copyRecursively$2(p<? super File, ? super IOException, ? extends OnErrorAction> paramp)
  {
    super(2);
  }
  
  public final void invoke(File paramFile, IOException paramIOException)
  {
    r.f(paramFile, "f");
    r.f(paramIOException, "e");
    if (this.$onError.invoke(paramFile, paramIOException) != OnErrorAction.TERMINATE) {
      return;
    }
    throw new TerminateException(paramFile);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.io.FilesKt__UtilsKt.copyRecursively.2
 * JD-Core Version:    0.7.0.1
 */