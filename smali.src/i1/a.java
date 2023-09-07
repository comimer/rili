package i1;

import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URLConnection;
import k1.d;

public class a
  implements c
{
  private final HttpURLConnection a;
  
  public a(HttpURLConnection paramHttpURLConnection)
  {
    this.a = paramHttpURLConnection;
  }
  
  /* Error */
  private String c(HttpURLConnection paramHttpURLConnection)
    throws IOException
  {
    // Byte code:
    //   0: new 24	java/io/BufferedReader
    //   3: dup
    //   4: new 26	java/io/InputStreamReader
    //   7: dup
    //   8: aload_1
    //   9: invokevirtual 32	java/net/HttpURLConnection:getErrorStream	()Ljava/io/InputStream;
    //   12: invokespecial 35	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   15: invokespecial 38	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   18: astore_2
    //   19: new 40	java/lang/StringBuilder
    //   22: dup
    //   23: invokespecial 41	java/lang/StringBuilder:<init>	()V
    //   26: astore_1
    //   27: aload_2
    //   28: invokevirtual 45	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   31: astore_3
    //   32: aload_3
    //   33: ifnull +19 -> 52
    //   36: aload_1
    //   37: aload_3
    //   38: invokevirtual 49	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   41: pop
    //   42: aload_1
    //   43: bipush 10
    //   45: invokevirtual 52	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   48: pop
    //   49: goto -22 -> 27
    //   52: aload_2
    //   53: invokevirtual 55	java/io/BufferedReader:close	()V
    //   56: aload_1
    //   57: invokevirtual 58	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   60: areturn
    //   61: astore_1
    //   62: aload_2
    //   63: invokevirtual 55	java/io/BufferedReader:close	()V
    //   66: aload_1
    //   67: athrow
    //   68: astore_2
    //   69: goto -13 -> 56
    //   72: astore_2
    //   73: goto -7 -> 66
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	76	0	this	a
    //   0	76	1	paramHttpURLConnection	HttpURLConnection
    //   18	45	2	localBufferedReader	java.io.BufferedReader
    //   68	1	2	localException1	java.lang.Exception
    //   72	1	2	localException2	java.lang.Exception
    //   31	7	3	str	String
    // Exception table:
    //   from	to	target	type
    //   27	32	61	finally
    //   36	49	61	finally
    //   52	56	68	java/lang/Exception
    //   62	66	72	java/lang/Exception
  }
  
  public String I()
  {
    return this.a.getContentType();
  }
  
  public String L()
  {
    try
    {
      Object localObject;
      if (isSuccessful())
      {
        localObject = null;
      }
      else
      {
        localObject = new java/lang/StringBuilder;
        ((StringBuilder)localObject).<init>();
        ((StringBuilder)localObject).append("Unable to fetch ");
        ((StringBuilder)localObject).append(this.a.getURL());
        ((StringBuilder)localObject).append(". Failed with ");
        ((StringBuilder)localObject).append(this.a.getResponseCode());
        ((StringBuilder)localObject).append("\n");
        ((StringBuilder)localObject).append(c(this.a));
        localObject = ((StringBuilder)localObject).toString();
      }
      return localObject;
    }
    catch (IOException localIOException)
    {
      d.d("get error failed ", localIOException);
      return localIOException.getMessage();
    }
  }
  
  public InputStream P()
    throws IOException
  {
    return this.a.getInputStream();
  }
  
  public void close()
  {
    this.a.disconnect();
  }
  
  public boolean isSuccessful()
  {
    boolean bool = false;
    try
    {
      int i = this.a.getResponseCode() / 100;
      if (i == 2) {
        bool = true;
      }
    }
    catch (IOException localIOException)
    {
      label20:
      break label20;
    }
    return bool;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     i1.a
 * JD-Core Version:    0.7.0.1
 */