package i1;

import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;

public abstract interface c
  extends Closeable
{
  public abstract String I();
  
  public abstract String L();
  
  public abstract InputStream P()
    throws IOException;
  
  public abstract boolean isSuccessful();
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     i1.c
 * JD-Core Version:    0.7.0.1
 */