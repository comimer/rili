package d6;

import java.io.Closeable;

public class c
{
  public static void a(Closeable paramCloseable)
  {
    if (paramCloseable != null) {
      try
      {
        paramCloseable.close();
      }
      catch (Exception paramCloseable)
      {
        paramCloseable.printStackTrace();
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     d6.c
 * JD-Core Version:    0.7.0.1
 */