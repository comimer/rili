package x5;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

public class a
{
  @Expose
  @SerializedName("sha1")
  public final String a;
  @Expose
  @SerializedName("md5")
  public final String b;
  
  private a(b paramb)
  {
    this.a = b.a(paramb);
    this.b = b.b(paramb);
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool = true;
    if (this == paramObject) {
      return true;
    }
    if (!(paramObject instanceof a)) {
      return false;
    }
    Object localObject = (a)paramObject;
    paramObject = this.a;
    if (paramObject != null ? !paramObject.equals(((a)localObject).a) : ((a)localObject).a != null) {
      return false;
    }
    paramObject = this.b;
    localObject = ((a)localObject).b;
    if (paramObject != null ? !paramObject.equals(localObject) : localObject != null) {
      bool = false;
    }
    return bool;
  }
  
  public int hashCode()
  {
    String str = this.a;
    int i = 0;
    int j;
    if (str != null) {
      j = str.hashCode();
    } else {
      j = 0;
    }
    str = this.b;
    if (str != null) {
      i = str.hashCode();
    }
    return j * 31 + i;
  }
  
  public String toString()
  {
    StringBuffer localStringBuffer = new StringBuffer("AppSignatureHash{");
    localStringBuffer.append("sha1='");
    localStringBuffer.append(this.a);
    localStringBuffer.append('\'');
    localStringBuffer.append(", md5='");
    localStringBuffer.append(this.b);
    localStringBuffer.append('\'');
    localStringBuffer.append('}');
    return localStringBuffer.toString();
  }
  
  public static final class b
  {
    private String a;
    private String b;
    
    public a c()
    {
      return new a(this, null);
    }
    
    public b d(String paramString)
    {
      this.b = paramString;
      return this;
    }
    
    public b e(String paramString)
    {
      this.a = paramString;
      return this;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     x5.a
 * JD-Core Version:    0.7.0.1
 */