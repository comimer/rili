package x0;

import android.os.Build.VERSION;
import androidx.work.BackoffPolicy;
import androidx.work.NetworkType;
import androidx.work.OutOfQuotaPolicy;
import androidx.work.WorkInfo.State;

public class v
{
  public static int a(BackoffPolicy paramBackoffPolicy)
  {
    int i = a.b[paramBackoffPolicy.ordinal()];
    if (i != 1)
    {
      if (i == 2) {
        return 1;
      }
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Could not convert ");
      localStringBuilder.append(paramBackoffPolicy);
      localStringBuilder.append(" to int");
      throw new IllegalArgumentException(localStringBuilder.toString());
    }
    return 0;
  }
  
  /* Error */
  public static androidx.work.c b(byte[] paramArrayOfByte)
  {
    // Byte code:
    //   0: new 50	androidx/work/c
    //   3: dup
    //   4: invokespecial 51	androidx/work/c:<init>	()V
    //   7: astore_1
    //   8: aload_0
    //   9: ifnonnull +5 -> 14
    //   12: aload_1
    //   13: areturn
    //   14: new 53	java/io/ByteArrayInputStream
    //   17: dup
    //   18: aload_0
    //   19: invokespecial 56	java/io/ByteArrayInputStream:<init>	([B)V
    //   22: astore_2
    //   23: new 58	java/io/ObjectInputStream
    //   26: astore_3
    //   27: aload_3
    //   28: aload_2
    //   29: invokespecial 61	java/io/ObjectInputStream:<init>	(Ljava/io/InputStream;)V
    //   32: aload_3
    //   33: astore_0
    //   34: aload_3
    //   35: invokevirtual 64	java/io/ObjectInputStream:readInt	()I
    //   38: istore 4
    //   40: iload 4
    //   42: ifle +26 -> 68
    //   45: aload_3
    //   46: astore_0
    //   47: aload_1
    //   48: aload_3
    //   49: invokevirtual 67	java/io/ObjectInputStream:readUTF	()Ljava/lang/String;
    //   52: invokestatic 73	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   55: aload_3
    //   56: invokevirtual 77	java/io/ObjectInputStream:readBoolean	()Z
    //   59: invokevirtual 80	androidx/work/c:a	(Landroid/net/Uri;Z)V
    //   62: iinc 4 255
    //   65: goto -25 -> 40
    //   68: aload_3
    //   69: invokevirtual 83	java/io/ObjectInputStream:close	()V
    //   72: goto +8 -> 80
    //   75: astore_0
    //   76: aload_0
    //   77: invokevirtual 88	java/lang/Throwable:printStackTrace	()V
    //   80: aload_2
    //   81: invokevirtual 89	java/io/ByteArrayInputStream:close	()V
    //   84: goto +53 -> 137
    //   87: astore 5
    //   89: goto +13 -> 102
    //   92: astore_3
    //   93: aconst_null
    //   94: astore_0
    //   95: goto +45 -> 140
    //   98: astore 5
    //   100: aconst_null
    //   101: astore_3
    //   102: aload_3
    //   103: astore_0
    //   104: aload 5
    //   106: invokevirtual 88	java/lang/Throwable:printStackTrace	()V
    //   109: aload_3
    //   110: ifnull +15 -> 125
    //   113: aload_3
    //   114: invokevirtual 83	java/io/ObjectInputStream:close	()V
    //   117: goto +8 -> 125
    //   120: astore_0
    //   121: aload_0
    //   122: invokevirtual 88	java/lang/Throwable:printStackTrace	()V
    //   125: aload_2
    //   126: invokevirtual 89	java/io/ByteArrayInputStream:close	()V
    //   129: goto +8 -> 137
    //   132: astore_0
    //   133: aload_0
    //   134: invokevirtual 88	java/lang/Throwable:printStackTrace	()V
    //   137: aload_1
    //   138: areturn
    //   139: astore_3
    //   140: aload_0
    //   141: ifnull +15 -> 156
    //   144: aload_0
    //   145: invokevirtual 83	java/io/ObjectInputStream:close	()V
    //   148: goto +8 -> 156
    //   151: astore_0
    //   152: aload_0
    //   153: invokevirtual 88	java/lang/Throwable:printStackTrace	()V
    //   156: aload_2
    //   157: invokevirtual 89	java/io/ByteArrayInputStream:close	()V
    //   160: goto +8 -> 168
    //   163: astore_0
    //   164: aload_0
    //   165: invokevirtual 88	java/lang/Throwable:printStackTrace	()V
    //   168: aload_3
    //   169: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	170	0	paramArrayOfByte	byte[]
    //   7	131	1	localc	androidx.work.c
    //   22	135	2	localByteArrayInputStream	java.io.ByteArrayInputStream
    //   26	43	3	localObjectInputStream	java.io.ObjectInputStream
    //   92	1	3	localObject1	Object
    //   101	13	3	localObject2	Object
    //   139	30	3	localObject3	Object
    //   38	25	4	i	int
    //   87	1	5	localIOException1	java.io.IOException
    //   98	7	5	localIOException2	java.io.IOException
    // Exception table:
    //   from	to	target	type
    //   68	72	75	java/io/IOException
    //   34	40	87	java/io/IOException
    //   47	62	87	java/io/IOException
    //   23	32	92	finally
    //   23	32	98	java/io/IOException
    //   113	117	120	java/io/IOException
    //   80	84	132	java/io/IOException
    //   125	129	132	java/io/IOException
    //   34	40	139	finally
    //   47	62	139	finally
    //   104	109	139	finally
    //   144	148	151	java/io/IOException
    //   156	160	163	java/io/IOException
  }
  
  /* Error */
  public static byte[] c(androidx.work.c paramc)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 93	androidx/work/c:c	()I
    //   4: istore_1
    //   5: aconst_null
    //   6: astore_2
    //   7: aconst_null
    //   8: astore_3
    //   9: iload_1
    //   10: ifne +5 -> 15
    //   13: aconst_null
    //   14: areturn
    //   15: new 95	java/io/ByteArrayOutputStream
    //   18: dup
    //   19: invokespecial 96	java/io/ByteArrayOutputStream:<init>	()V
    //   22: astore 4
    //   24: aload_3
    //   25: astore 5
    //   27: new 98	java/io/ObjectOutputStream
    //   30: astore 6
    //   32: aload_3
    //   33: astore 5
    //   35: aload 6
    //   37: aload 4
    //   39: invokespecial 101	java/io/ObjectOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   42: aload 6
    //   44: aload_0
    //   45: invokevirtual 93	androidx/work/c:c	()I
    //   48: invokevirtual 105	java/io/ObjectOutputStream:writeInt	(I)V
    //   51: aload_0
    //   52: invokevirtual 108	androidx/work/c:b	()Ljava/util/Set;
    //   55: invokeinterface 114 1 0
    //   60: astore 5
    //   62: aload 5
    //   64: invokeinterface 119 1 0
    //   69: ifeq +38 -> 107
    //   72: aload 5
    //   74: invokeinterface 123 1 0
    //   79: checkcast 125	androidx/work/c$a
    //   82: astore_0
    //   83: aload 6
    //   85: aload_0
    //   86: invokevirtual 128	androidx/work/c$a:a	()Landroid/net/Uri;
    //   89: invokevirtual 129	android/net/Uri:toString	()Ljava/lang/String;
    //   92: invokevirtual 132	java/io/ObjectOutputStream:writeUTF	(Ljava/lang/String;)V
    //   95: aload 6
    //   97: aload_0
    //   98: invokevirtual 134	androidx/work/c$a:b	()Z
    //   101: invokevirtual 138	java/io/ObjectOutputStream:writeBoolean	(Z)V
    //   104: goto -42 -> 62
    //   107: aload 6
    //   109: invokevirtual 139	java/io/ObjectOutputStream:close	()V
    //   112: goto +8 -> 120
    //   115: astore_0
    //   116: aload_0
    //   117: invokevirtual 88	java/lang/Throwable:printStackTrace	()V
    //   120: aload 4
    //   122: invokevirtual 140	java/io/ByteArrayOutputStream:close	()V
    //   125: goto +68 -> 193
    //   128: astore_0
    //   129: aload 6
    //   131: astore 5
    //   133: goto +66 -> 199
    //   136: astore 5
    //   138: aload 6
    //   140: astore_0
    //   141: aload 5
    //   143: astore 6
    //   145: goto +11 -> 156
    //   148: astore_0
    //   149: goto +50 -> 199
    //   152: astore 6
    //   154: aload_2
    //   155: astore_0
    //   156: aload_0
    //   157: astore 5
    //   159: aload 6
    //   161: invokevirtual 88	java/lang/Throwable:printStackTrace	()V
    //   164: aload_0
    //   165: ifnull +15 -> 180
    //   168: aload_0
    //   169: invokevirtual 139	java/io/ObjectOutputStream:close	()V
    //   172: goto +8 -> 180
    //   175: astore_0
    //   176: aload_0
    //   177: invokevirtual 88	java/lang/Throwable:printStackTrace	()V
    //   180: aload 4
    //   182: invokevirtual 140	java/io/ByteArrayOutputStream:close	()V
    //   185: goto +8 -> 193
    //   188: astore_0
    //   189: aload_0
    //   190: invokevirtual 88	java/lang/Throwable:printStackTrace	()V
    //   193: aload 4
    //   195: invokevirtual 144	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   198: areturn
    //   199: aload 5
    //   201: ifnull +18 -> 219
    //   204: aload 5
    //   206: invokevirtual 139	java/io/ObjectOutputStream:close	()V
    //   209: goto +10 -> 219
    //   212: astore 5
    //   214: aload 5
    //   216: invokevirtual 88	java/lang/Throwable:printStackTrace	()V
    //   219: aload 4
    //   221: invokevirtual 140	java/io/ByteArrayOutputStream:close	()V
    //   224: goto +10 -> 234
    //   227: astore 5
    //   229: aload 5
    //   231: invokevirtual 88	java/lang/Throwable:printStackTrace	()V
    //   234: aload_0
    //   235: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	236	0	paramc	androidx.work.c
    //   4	6	1	i	int
    //   6	149	2	localObject1	Object
    //   8	25	3	localObject2	Object
    //   22	198	4	localByteArrayOutputStream	java.io.ByteArrayOutputStream
    //   25	107	5	localObject3	Object
    //   136	6	5	localIOException1	java.io.IOException
    //   157	48	5	localc	androidx.work.c
    //   212	3	5	localIOException2	java.io.IOException
    //   227	3	5	localIOException3	java.io.IOException
    //   30	114	6	localObject4	Object
    //   152	8	6	localIOException4	java.io.IOException
    // Exception table:
    //   from	to	target	type
    //   107	112	115	java/io/IOException
    //   42	62	128	finally
    //   62	104	128	finally
    //   42	62	136	java/io/IOException
    //   62	104	136	java/io/IOException
    //   27	32	148	finally
    //   35	42	148	finally
    //   159	164	148	finally
    //   27	32	152	java/io/IOException
    //   35	42	152	java/io/IOException
    //   168	172	175	java/io/IOException
    //   120	125	188	java/io/IOException
    //   180	185	188	java/io/IOException
    //   204	209	212	java/io/IOException
    //   219	224	227	java/io/IOException
  }
  
  public static BackoffPolicy d(int paramInt)
  {
    if (paramInt != 0)
    {
      if (paramInt == 1) {
        return BackoffPolicy.LINEAR;
      }
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Could not convert ");
      localStringBuilder.append(paramInt);
      localStringBuilder.append(" to BackoffPolicy");
      throw new IllegalArgumentException(localStringBuilder.toString());
    }
    return BackoffPolicy.EXPONENTIAL;
  }
  
  public static NetworkType e(int paramInt)
  {
    if (paramInt != 0)
    {
      if (paramInt != 1)
      {
        if (paramInt != 2)
        {
          if (paramInt != 3)
          {
            if (paramInt != 4)
            {
              if ((Build.VERSION.SDK_INT >= 30) && (paramInt == 5)) {
                return NetworkType.TEMPORARILY_UNMETERED;
              }
              StringBuilder localStringBuilder = new StringBuilder();
              localStringBuilder.append("Could not convert ");
              localStringBuilder.append(paramInt);
              localStringBuilder.append(" to NetworkType");
              throw new IllegalArgumentException(localStringBuilder.toString());
            }
            return NetworkType.METERED;
          }
          return NetworkType.NOT_ROAMING;
        }
        return NetworkType.UNMETERED;
      }
      return NetworkType.CONNECTED;
    }
    return NetworkType.NOT_REQUIRED;
  }
  
  public static OutOfQuotaPolicy f(int paramInt)
  {
    if (paramInt != 0)
    {
      if (paramInt == 1) {
        return OutOfQuotaPolicy.DROP_WORK_REQUEST;
      }
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Could not convert ");
      localStringBuilder.append(paramInt);
      localStringBuilder.append(" to OutOfQuotaPolicy");
      throw new IllegalArgumentException(localStringBuilder.toString());
    }
    return OutOfQuotaPolicy.RUN_AS_NON_EXPEDITED_WORK_REQUEST;
  }
  
  public static WorkInfo.State g(int paramInt)
  {
    if (paramInt != 0)
    {
      if (paramInt != 1)
      {
        if (paramInt != 2)
        {
          if (paramInt != 3)
          {
            if (paramInt != 4)
            {
              if (paramInt == 5) {
                return WorkInfo.State.CANCELLED;
              }
              StringBuilder localStringBuilder = new StringBuilder();
              localStringBuilder.append("Could not convert ");
              localStringBuilder.append(paramInt);
              localStringBuilder.append(" to State");
              throw new IllegalArgumentException(localStringBuilder.toString());
            }
            return WorkInfo.State.BLOCKED;
          }
          return WorkInfo.State.FAILED;
        }
        return WorkInfo.State.SUCCEEDED;
      }
      return WorkInfo.State.RUNNING;
    }
    return WorkInfo.State.ENQUEUED;
  }
  
  public static int h(NetworkType paramNetworkType)
  {
    int i = a.c[paramNetworkType.ordinal()];
    if (i != 1)
    {
      if (i != 2)
      {
        if (i != 3)
        {
          if (i != 4)
          {
            if (i != 5)
            {
              if ((Build.VERSION.SDK_INT >= 30) && (paramNetworkType == NetworkType.TEMPORARILY_UNMETERED)) {
                return 5;
              }
              StringBuilder localStringBuilder = new StringBuilder();
              localStringBuilder.append("Could not convert ");
              localStringBuilder.append(paramNetworkType);
              localStringBuilder.append(" to int");
              throw new IllegalArgumentException(localStringBuilder.toString());
            }
            return 4;
          }
          return 3;
        }
        return 2;
      }
      return 1;
    }
    return 0;
  }
  
  public static int i(OutOfQuotaPolicy paramOutOfQuotaPolicy)
  {
    int i = a.d[paramOutOfQuotaPolicy.ordinal()];
    if (i != 1)
    {
      if (i == 2) {
        return 1;
      }
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Could not convert ");
      localStringBuilder.append(paramOutOfQuotaPolicy);
      localStringBuilder.append(" to int");
      throw new IllegalArgumentException(localStringBuilder.toString());
    }
    return 0;
  }
  
  public static int j(WorkInfo.State paramState)
  {
    switch (a.a[paramState.ordinal()])
    {
    default: 
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Could not convert ");
      localStringBuilder.append(paramState);
      localStringBuilder.append(" to int");
      throw new IllegalArgumentException(localStringBuilder.toString());
    case 6: 
      return 5;
    case 5: 
      return 4;
    case 4: 
      return 3;
    case 3: 
      return 2;
    case 2: 
      return 1;
    }
    return 0;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     x0.v
 * JD-Core Version:    0.7.0.1
 */