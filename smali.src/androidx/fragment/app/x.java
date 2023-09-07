package androidx.fragment.app;

import android.util.Log;
import java.io.Writer;

final class x
  extends Writer
{
  private final String a;
  private StringBuilder b = new StringBuilder(128);
  
  x(String paramString)
  {
    this.a = paramString;
  }
  
  private void c()
  {
    if (this.b.length() > 0)
    {
      Log.d(this.a, this.b.toString());
      StringBuilder localStringBuilder = this.b;
      localStringBuilder.delete(0, localStringBuilder.length());
    }
  }
  
  public void close()
  {
    c();
  }
  
  public void flush()
  {
    c();
  }
  
  public void write(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    for (int i = 0; i < paramInt2; i++)
    {
      char c = paramArrayOfChar[(paramInt1 + i)];
      if (c == '\n') {
        c();
      } else {
        this.b.append(c);
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.fragment.app.x
 * JD-Core Version:    0.7.0.1
 */