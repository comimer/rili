package c6;

import java.io.File;
import java.io.FileOutputStream;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;

public class a
{
  FileOutputStream a = null;
  FileLock b = null;
  private String c;
  
  public a(String paramString)
  {
    this.c = paramString;
  }
  
  public boolean a()
  {
    b();
    boolean bool = false;
    try
    {
      FileOutputStream localFileOutputStream = new java/io/FileOutputStream;
      Object localObject = new java/io/File;
      ((File)localObject).<init>(this.c);
      localFileOutputStream.<init>((File)localObject, true);
      this.a = localFileOutputStream;
      localObject = localFileOutputStream.getChannel().lock();
      this.b = ((FileLock)localObject);
      if (localObject != null) {
        bool = true;
      }
      return bool;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return false;
  }
  
  /* Error */
  public void b()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 19	c6/a:b	Ljava/nio/channels/FileLock;
    //   4: astore_1
    //   5: aload_1
    //   6: ifnull +23 -> 29
    //   9: aload_1
    //   10: invokevirtual 56	java/nio/channels/FileLock:release	()V
    //   13: goto +11 -> 24
    //   16: astore_1
    //   17: aload_0
    //   18: aconst_null
    //   19: putfield 19	c6/a:b	Ljava/nio/channels/FileLock;
    //   22: aload_1
    //   23: athrow
    //   24: aload_0
    //   25: aconst_null
    //   26: putfield 19	c6/a:b	Ljava/nio/channels/FileLock;
    //   29: aload_0
    //   30: getfield 17	c6/a:a	Ljava/io/FileOutputStream;
    //   33: astore_1
    //   34: aload_1
    //   35: ifnull +12 -> 47
    //   38: aload_1
    //   39: invokestatic 61	d6/c:a	(Ljava/io/Closeable;)V
    //   42: aload_0
    //   43: aconst_null
    //   44: putfield 17	c6/a:a	Ljava/io/FileOutputStream;
    //   47: return
    //   48: astore_1
    //   49: goto -25 -> 24
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	52	0	this	a
    //   4	6	1	localFileLock	FileLock
    //   16	7	1	localObject	Object
    //   33	6	1	localFileOutputStream	FileOutputStream
    //   48	1	1	localException	Exception
    // Exception table:
    //   from	to	target	type
    //   9	13	16	finally
    //   9	13	48	java/lang/Exception
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     c6.a
 * JD-Core Version:    0.7.0.1
 */