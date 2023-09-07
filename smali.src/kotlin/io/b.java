package kotlin.io;

import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"Ljava/io/File;", "file", "other", "", "reason", "b", "kotlin-stdlib"}, k=2, mv={1, 7, 1})
public final class b
{
  private static final String b(File paramFile1, File paramFile2, String paramString)
  {
    paramFile1 = new StringBuilder(paramFile1.toString());
    if (paramFile2 != null)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(" -> ");
      localStringBuilder.append(paramFile2);
      paramFile1.append(localStringBuilder.toString());
    }
    if (paramString != null)
    {
      paramFile2 = new StringBuilder();
      paramFile2.append(": ");
      paramFile2.append(paramString);
      paramFile1.append(paramFile2.toString());
    }
    paramFile1 = paramFile1.toString();
    r.e(paramFile1, "sb.toString()");
    return paramFile1;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.io.b
 * JD-Core Version:    0.7.0.1
 */