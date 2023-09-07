package kotlin.io;

import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.r;
import kotlin.u;
import w7.l;

@Metadata(bv={}, d1={""}, d2={"", "it", "Lkotlin/u;", "invoke", "(Ljava/lang/String;)V", "<anonymous>"}, k=3, mv={1, 7, 1})
final class FilesKt__FileReadWriteKt$readLines$1
  extends Lambda
  implements l<String, u>
{
  FilesKt__FileReadWriteKt$readLines$1(ArrayList<String> paramArrayList)
  {
    super(1);
  }
  
  public final void invoke(String paramString)
  {
    r.f(paramString, "it");
    this.$result.add(paramString);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.io.FilesKt__FileReadWriteKt.readLines.1
 * JD-Core Version:    0.7.0.1
 */