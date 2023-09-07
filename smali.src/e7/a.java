package e7;

import android.os.BaseBundle;
import android.os.Bundle;

public class a
{
  public final String a;
  public final String b;
  public final String c;
  public final String d;
  
  public a(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    this.a = paramString1;
    this.b = paramString2;
    this.c = paramString3;
    this.d = paramString4;
  }
  
  public Bundle a()
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("iccid", this.a);
    localBundle.putString("imsi", this.b);
    localBundle.putString("mccmnc", this.c);
    localBundle.putString("line1Number", this.d);
    return localBundle;
  }
  
  public String toString()
  {
    return a().toString();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     e7.a
 * JD-Core Version:    0.7.0.1
 */