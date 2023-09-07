package g5;

import java.io.PrintStream;
import java.util.logging.Level;
import java.util.logging.Logger;

public class a
{
  private static boolean a = false;
  private static Logger b;
  private static final Level c = Level.FINE;
  
  static
  {
    try
    {
      a = Boolean.getBoolean("javax.activation.debug");
      label14:
      b = Logger.getLogger("javax.activation");
      return;
    }
    finally
    {
      break label14;
    }
  }
  
  public static boolean a()
  {
    boolean bool;
    if ((!a) && (!b.isLoggable(c))) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  public static void b(String paramString)
  {
    if (a) {
      System.out.println(paramString);
    }
    b.log(c, paramString);
  }
  
  public static void c(String paramString, Throwable paramThrowable)
  {
    if (a)
    {
      PrintStream localPrintStream = System.out;
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(paramString);
      localStringBuilder.append("; Exception: ");
      localStringBuilder.append(paramThrowable);
      localPrintStream.println(localStringBuilder.toString());
    }
    b.log(c, paramString, paramThrowable);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     g5.a
 * JD-Core Version:    0.7.0.1
 */