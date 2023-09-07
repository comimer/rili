package com.miui.maml.util;

import android.content.Context;
import android.content.res.AssetManager;
import android.text.TextUtils;
import android.util.Log;
import com.miui.maml.ResourceLoader;
import java.io.IOException;
import java.io.InputStream;

public class AssetsResourceLoader
  extends ResourceLoader
{
  private static final String LOG_TAG = "AssetsResourceLoader";
  private Context mContext;
  private String mResourcePath;
  
  public AssetsResourceLoader(Context paramContext, String paramString)
  {
    this.mContext = paramContext.getApplicationContext();
    this.mResourcePath = paramString;
  }
  
  public String getID()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("AssetsResourceLoader");
    localStringBuilder.append(this.mResourcePath);
    return localStringBuilder.toString();
  }
  
  public InputStream getInputStream(String paramString, long[] paramArrayOfLong)
  {
    boolean bool = TextUtils.isEmpty(paramString);
    Object localObject = null;
    InputStream localInputStream1 = null;
    if (!bool)
    {
      InputStream localInputStream2 = localInputStream1;
      try
      {
        localObject = this.mContext.getAssets();
        localInputStream2 = localInputStream1;
        StringBuilder localStringBuilder = new java/lang/StringBuilder;
        localInputStream2 = localInputStream1;
        localStringBuilder.<init>();
        localInputStream2 = localInputStream1;
        localStringBuilder.append(this.mResourcePath);
        localInputStream2 = localInputStream1;
        localStringBuilder.append("/");
        localInputStream2 = localInputStream1;
        localStringBuilder.append(paramString);
        localInputStream2 = localInputStream1;
        localInputStream1 = ((AssetManager)localObject).open(localStringBuilder.toString());
        localObject = localInputStream1;
        if (paramArrayOfLong != null)
        {
          localInputStream2 = localInputStream1;
          localObject = localInputStream1;
          if (paramArrayOfLong.length > 0)
          {
            localInputStream2 = localInputStream1;
            paramArrayOfLong[0] = localInputStream1.available();
            localObject = localInputStream1;
          }
        }
      }
      catch (IOException paramArrayOfLong)
      {
        paramArrayOfLong = new StringBuilder();
        paramArrayOfLong.append("resource ");
        paramArrayOfLong.append(paramString);
        paramArrayOfLong.append(" do not exists");
        Log.d("AssetsResourceLoader", paramArrayOfLong.toString());
        localObject = localInputStream2;
      }
    }
    return localObject;
  }
  
  /* Error */
  public boolean resourceExists(String paramString)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokestatic 49	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   4: ifne +120 -> 124
    //   7: aload_0
    //   8: getfield 24	com/miui/maml/util/AssetsResourceLoader:mContext	Landroid/content/Context;
    //   11: invokevirtual 53	android/content/Context:getAssets	()Landroid/content/res/AssetManager;
    //   14: astore_2
    //   15: new 31	java/lang/StringBuilder
    //   18: astore_3
    //   19: aload_3
    //   20: invokespecial 32	java/lang/StringBuilder:<init>	()V
    //   23: aload_3
    //   24: aload_0
    //   25: getfield 26	com/miui/maml/util/AssetsResourceLoader:mResourcePath	Ljava/lang/String;
    //   28: invokevirtual 36	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   31: pop
    //   32: aload_3
    //   33: ldc 55
    //   35: invokevirtual 36	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   38: pop
    //   39: aload_3
    //   40: aload_1
    //   41: invokevirtual 36	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   44: pop
    //   45: aload_2
    //   46: aload_3
    //   47: invokevirtual 39	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   50: invokevirtual 61	android/content/res/AssetManager:open	(Ljava/lang/String;)Ljava/io/InputStream;
    //   53: astore_2
    //   54: aload_2
    //   55: ifnull +69 -> 124
    //   58: aload_2
    //   59: invokevirtual 84	java/io/InputStream:close	()V
    //   62: iconst_1
    //   63: istore 4
    //   65: goto +62 -> 127
    //   68: astore_1
    //   69: aload_1
    //   70: invokevirtual 89	java/lang/Throwable:printStackTrace	()V
    //   73: goto +51 -> 124
    //   76: astore_1
    //   77: goto +45 -> 122
    //   80: astore_2
    //   81: new 31	java/lang/StringBuilder
    //   84: astore_2
    //   85: aload_2
    //   86: invokespecial 32	java/lang/StringBuilder:<init>	()V
    //   89: aload_2
    //   90: ldc 69
    //   92: invokevirtual 36	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   95: pop
    //   96: aload_2
    //   97: aload_1
    //   98: invokevirtual 36	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   101: pop
    //   102: aload_2
    //   103: ldc 71
    //   105: invokevirtual 36	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   108: pop
    //   109: ldc 8
    //   111: aload_2
    //   112: invokevirtual 39	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   115: invokestatic 77	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   118: pop
    //   119: goto +5 -> 124
    //   122: aload_1
    //   123: athrow
    //   124: iconst_0
    //   125: istore 4
    //   127: iload 4
    //   129: ireturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	130	0	this	AssetsResourceLoader
    //   0	130	1	paramString	String
    //   14	45	2	localObject	Object
    //   80	1	2	localIOException	IOException
    //   84	28	2	localStringBuilder1	StringBuilder
    //   18	29	3	localStringBuilder2	StringBuilder
    //   63	65	4	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   58	62	68	java/lang/Exception
    //   7	54	76	finally
    //   81	119	76	finally
    //   7	54	80	java/io/IOException
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.util.AssetsResourceLoader
 * JD-Core Version:    0.7.0.1
 */