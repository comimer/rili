package k0;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.channels.FileChannel;
import java.nio.channels.spi.AbstractInterruptibleChannel;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

public class a
{
  private static final Map<String, Lock> e = new HashMap();
  private final File a;
  private final Lock b;
  private final boolean c;
  private FileChannel d;
  
  public a(String paramString, File paramFile, boolean paramBoolean)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramString);
    localStringBuilder.append(".lck");
    paramString = new File(paramFile, localStringBuilder.toString());
    this.a = paramString;
    this.b = a(paramString.getAbsolutePath());
    this.c = paramBoolean;
  }
  
  private static Lock a(String paramString)
  {
    synchronized (e)
    {
      Lock localLock = (Lock)???.get(paramString);
      Object localObject = localLock;
      if (localLock == null)
      {
        localObject = new java/util/concurrent/locks/ReentrantLock;
        ((ReentrantLock)localObject).<init>();
        ???.put(paramString, localObject);
      }
      return localObject;
    }
  }
  
  public void b()
  {
    this.b.lock();
    if (this.c) {
      try
      {
        Object localObject = new java/io/FileOutputStream;
        ((FileOutputStream)localObject).<init>(this.a);
        localObject = ((FileOutputStream)localObject).getChannel();
        this.d = ((FileChannel)localObject);
        ((FileChannel)localObject).lock();
      }
      catch (IOException localIOException)
      {
        throw new IllegalStateException("Unable to grab copy lock.", localIOException);
      }
    }
  }
  
  public void c()
  {
    FileChannel localFileChannel = this.d;
    if (localFileChannel != null) {}
    try
    {
      localFileChannel.close();
      label13:
      this.b.unlock();
      return;
    }
    catch (IOException localIOException)
    {
      break label13;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     k0.a
 * JD-Core Version:    0.7.0.1
 */