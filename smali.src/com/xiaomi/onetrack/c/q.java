package com.xiaomi.onetrack.c;

import android.os.HandlerThread;
import android.text.TextUtils;
import com.xiaomi.onetrack.d.f;
import com.xiaomi.onetrack.g.b;
import com.xiaomi.onetrack.util.p;
import com.xiaomi.onetrack.util.x;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

public class q
{
  public static final String a = "config";
  public static final String b = "appId";
  public static final String c = "version";
  private static final String d = "UploaderEngine";
  private static final String e = "code";
  private static final String f = "UTF-8";
  private m g;
  
  private q()
  {
    b();
  }
  
  public static q a()
  {
    return a.a();
  }
  
  private boolean a(JSONArray paramJSONArray)
  {
    boolean bool1 = false;
    boolean bool2;
    try
    {
      String str = x.a().b();
      paramJSONArray = paramJSONArray.toString();
      StringBuilder localStringBuilder = new java/lang/StringBuilder;
      localStringBuilder.<init>();
      localStringBuilder.append(" payload:");
      localStringBuilder.append(paramJSONArray);
      p.a("UploaderEngine", localStringBuilder.toString());
      byte[] arrayOfByte = a(a(paramJSONArray));
      localStringBuilder = new java/lang/StringBuilder;
      localStringBuilder.<init>();
      localStringBuilder.append("before zip and encrypt, len=");
      localStringBuilder.append(paramJSONArray.length());
      localStringBuilder.append(", after=");
      localStringBuilder.append(arrayOfByte.length);
      p.a("UploaderEngine", localStringBuilder.toString());
      str = b.a(str, arrayOfByte);
      paramJSONArray = new java/lang/StringBuilder;
      paramJSONArray.<init>();
      paramJSONArray.append("sendDataToServer response: ");
      paramJSONArray.append(str);
      p.a("UploaderEngine", paramJSONArray.toString());
      if (TextUtils.isEmpty(str)) {
        bool2 = bool1;
      } else {
        bool2 = b(str);
      }
    }
    catch (Exception paramJSONArray)
    {
      p.b("UploaderEngine", "Exception while uploading ", paramJSONArray);
      bool2 = bool1;
    }
    return bool2;
  }
  
  /* Error */
  private static byte[] a(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: aconst_null
    //   3: astore_2
    //   4: new 112	java/io/ByteArrayOutputStream
    //   7: astore_3
    //   8: aload_3
    //   9: aload_0
    //   10: ldc 25
    //   12: invokevirtual 115	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   15: arraylength
    //   16: invokespecial 118	java/io/ByteArrayOutputStream:<init>	(I)V
    //   19: new 120	java/util/zip/GZIPOutputStream
    //   22: astore 4
    //   24: aload 4
    //   26: aload_3
    //   27: invokespecial 123	java/util/zip/GZIPOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   30: aload_3
    //   31: astore_1
    //   32: aload 4
    //   34: astore 5
    //   36: aload 4
    //   38: aload_0
    //   39: ldc 25
    //   41: invokevirtual 115	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   44: invokevirtual 129	java/io/OutputStream:write	([B)V
    //   47: aload_3
    //   48: astore_1
    //   49: aload 4
    //   51: astore 5
    //   53: aload 4
    //   55: invokevirtual 132	java/util/zip/GZIPOutputStream:finish	()V
    //   58: aload_3
    //   59: astore_1
    //   60: aload 4
    //   62: astore 5
    //   64: aload_3
    //   65: invokevirtual 136	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   68: astore_0
    //   69: goto +111 -> 180
    //   72: astore_1
    //   73: aload 4
    //   75: astore_0
    //   76: aload_1
    //   77: astore 4
    //   79: goto +32 -> 111
    //   82: astore_0
    //   83: aconst_null
    //   84: astore 5
    //   86: goto +108 -> 194
    //   89: astore 4
    //   91: aconst_null
    //   92: astore_0
    //   93: goto +18 -> 111
    //   96: astore_0
    //   97: aconst_null
    //   98: astore 5
    //   100: aload_1
    //   101: astore_3
    //   102: goto +92 -> 194
    //   105: astore 4
    //   107: aconst_null
    //   108: astore_3
    //   109: aload_3
    //   110: astore_0
    //   111: aload_3
    //   112: astore_1
    //   113: aload_0
    //   114: astore 5
    //   116: new 57	java/lang/StringBuilder
    //   119: astore 6
    //   121: aload_3
    //   122: astore_1
    //   123: aload_0
    //   124: astore 5
    //   126: aload 6
    //   128: invokespecial 58	java/lang/StringBuilder:<init>	()V
    //   131: aload_3
    //   132: astore_1
    //   133: aload_0
    //   134: astore 5
    //   136: aload 6
    //   138: ldc 138
    //   140: invokevirtual 64	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   143: pop
    //   144: aload_3
    //   145: astore_1
    //   146: aload_0
    //   147: astore 5
    //   149: aload 6
    //   151: aload 4
    //   153: invokevirtual 139	java/lang/Object:toString	()Ljava/lang/String;
    //   156: invokevirtual 64	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   159: pop
    //   160: aload_3
    //   161: astore_1
    //   162: aload_0
    //   163: astore 5
    //   165: ldc 19
    //   167: aload 6
    //   169: invokevirtual 65	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   172: invokestatic 141	com/xiaomi/onetrack/util/p:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   175: aload_0
    //   176: astore 4
    //   178: aload_2
    //   179: astore_0
    //   180: aload_3
    //   181: invokestatic 145	com/xiaomi/onetrack/util/m:a	(Ljava/io/OutputStream;)V
    //   184: aload 4
    //   186: invokestatic 145	com/xiaomi/onetrack/util/m:a	(Ljava/io/OutputStream;)V
    //   189: aload_0
    //   190: areturn
    //   191: astore_0
    //   192: aload_1
    //   193: astore_3
    //   194: aload_3
    //   195: invokestatic 145	com/xiaomi/onetrack/util/m:a	(Ljava/io/OutputStream;)V
    //   198: aload 5
    //   200: invokestatic 145	com/xiaomi/onetrack/util/m:a	(Ljava/io/OutputStream;)V
    //   203: aload_0
    //   204: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	205	0	paramString	String
    //   1	59	1	localObject1	Object
    //   72	29	1	localException1	Exception
    //   112	81	1	localObject2	Object
    //   3	176	2	localObject3	Object
    //   7	188	3	localObject4	Object
    //   22	56	4	localObject5	Object
    //   89	1	4	localException2	Exception
    //   105	47	4	localException3	Exception
    //   176	9	4	str	String
    //   34	165	5	localObject6	Object
    //   119	49	6	localStringBuilder	StringBuilder
    // Exception table:
    //   from	to	target	type
    //   36	47	72	java/lang/Exception
    //   53	58	72	java/lang/Exception
    //   64	69	72	java/lang/Exception
    //   19	30	82	finally
    //   19	30	89	java/lang/Exception
    //   4	19	96	finally
    //   4	19	105	java/lang/Exception
    //   36	47	191	finally
    //   53	58	191	finally
    //   64	69	191	finally
    //   116	121	191	finally
    //   126	131	191	finally
    //   136	144	191	finally
    //   149	160	191	finally
    //   165	175	191	finally
  }
  
  private byte[] a(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null)
    {
      p.b("UploaderEngine", "content is null");
      return null;
    }
    return com.xiaomi.onetrack.d.a.a(paramArrayOfByte, com.xiaomi.onetrack.d.c.a(f.a().b()[0]));
  }
  
  private void b()
  {
    HandlerThread localHandlerThread = new HandlerThread("onetrack_uploader_worker");
    localHandlerThread.start();
    this.g = new m(localHandlerThread.getLooper());
  }
  
  private boolean b(String paramString)
  {
    boolean bool = false;
    try
    {
      JSONObject localJSONObject = new org/json/JSONObject;
      localJSONObject.<init>(paramString);
      int i = localJSONObject.optInt("code");
      if (i == 0)
      {
        p.a("UploaderEngine", "成功发送数据到服务端");
        com.xiaomi.onetrack.b.a.a(localJSONObject);
        bool = true;
      }
      else if (i == -3)
      {
        p.b("UploaderEngine", "signature expired, will update");
        f.a().c();
      }
      else
      {
        paramString = new java/lang/StringBuilder;
        paramString.<init>();
        paramString.append("Error: status code=");
        paramString.append(i);
        p.b("UploaderEngine", paramString.toString());
      }
    }
    catch (Exception paramString)
    {
      p.b("UploaderEngine", "parseUploadingResult exception ", paramString);
    }
    return bool;
  }
  
  public void a(int paramInt, boolean paramBoolean)
  {
    try
    {
      m localm = this.g;
      if (localm != null) {
        localm.a(paramInt, paramBoolean);
      } else {
        p.b("UploaderEngine", "*** impossible, upload timer should not be null");
      }
      return;
    }
    finally {}
  }
  
  public boolean a(int paramInt)
  {
    p.a("UploaderEngine", "即将读取数据库并上传数据");
    h localh;
    do
    {
      localh = c.a().a(paramInt);
      if (localh == null)
      {
        localStringBuilder = new StringBuilder();
        localStringBuilder.append("满足条件的记录为空，即将返回, priority=");
        localStringBuilder.append(paramInt);
        p.a("UploaderEngine", localStringBuilder.toString());
        return true;
      }
      ArrayList localArrayList = localh.c;
      boolean bool = a(localh.a);
      localStringBuilder = new StringBuilder();
      localStringBuilder.append("upload success:");
      localStringBuilder.append(bool);
      p.a("UploaderEngine", localStringBuilder.toString());
      if (!bool) {
        return false;
      }
      if (c.a().a(localArrayList) == 0)
      {
        p.b("UploaderEngine", "delete DB failed!", new Throwable());
        break;
      }
    } while (!localh.d);
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("No more records for prio=");
    localStringBuilder.append(paramInt);
    p.a("UploaderEngine", localStringBuilder.toString());
    return true;
  }
  
  private static class a
  {
    private static final q a = new q(null);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.c.q
 * JD-Core Version:    0.7.0.1
 */