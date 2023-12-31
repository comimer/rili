package androidx.core.provider;

import android.util.Base64;
import androidx.core.util.h;
import java.util.List;

public final class e
{
  private final String a;
  private final String b;
  private final String c;
  private final List<List<byte[]>> d;
  private final int e;
  private final String f;
  
  public e(String paramString1, String paramString2, String paramString3, List<List<byte[]>> paramList)
  {
    this.a = ((String)h.g(paramString1));
    this.b = ((String)h.g(paramString2));
    this.c = ((String)h.g(paramString3));
    this.d = ((List)h.g(paramList));
    this.e = 0;
    this.f = a(paramString1, paramString2, paramString3);
  }
  
  private String a(String paramString1, String paramString2, String paramString3)
  {
    paramString1 = new StringBuilder(paramString1);
    paramString1.append("-");
    paramString1.append(paramString2);
    paramString1.append("-");
    paramString1.append(paramString3);
    return paramString1.toString();
  }
  
  public List<List<byte[]>> b()
  {
    return this.d;
  }
  
  public int c()
  {
    return this.e;
  }
  
  String d()
  {
    return this.f;
  }
  
  public String e()
  {
    return this.a;
  }
  
  public String f()
  {
    return this.b;
  }
  
  public String g()
  {
    return this.c;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("FontRequest {mProviderAuthority: ");
    ((StringBuilder)localObject).append(this.a);
    ((StringBuilder)localObject).append(", mProviderPackage: ");
    ((StringBuilder)localObject).append(this.b);
    ((StringBuilder)localObject).append(", mQuery: ");
    ((StringBuilder)localObject).append(this.c);
    ((StringBuilder)localObject).append(", mCertificates:");
    localStringBuilder.append(((StringBuilder)localObject).toString());
    for (int i = 0; i < this.d.size(); i++)
    {
      localStringBuilder.append(" [");
      localObject = (List)this.d.get(i);
      for (int j = 0; j < ((List)localObject).size(); j++)
      {
        localStringBuilder.append(" \"");
        localStringBuilder.append(Base64.encodeToString((byte[])((List)localObject).get(j), 0));
        localStringBuilder.append("\"");
      }
      localStringBuilder.append(" ]");
    }
    localStringBuilder.append("}");
    localObject = new StringBuilder();
    ((StringBuilder)localObject).append("mCertificatesArray: ");
    ((StringBuilder)localObject).append(this.e);
    localStringBuilder.append(((StringBuilder)localObject).toString());
    return localStringBuilder.toString();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.provider.e
 * JD-Core Version:    0.7.0.1
 */