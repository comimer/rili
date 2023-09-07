package l7;

import java.io.IOException;
import java.io.OutputStream;
import java.io.Reader;

public class b
{
  /* Error */
  public static com.xiaomi.settingsdk.backup.data.DataPackage a(android.content.Context paramContext, android.os.ParcelFileDescriptor paramParcelFileDescriptor, a parama)
    throws IOException
  {
    // Byte code:
    //   0: new 12	com/xiaomi/settingsdk/backup/data/DataPackage
    //   3: dup
    //   4: invokespecial 16	com/xiaomi/settingsdk/backup/data/DataPackage:<init>	()V
    //   7: astore_3
    //   8: aload_2
    //   9: aload_0
    //   10: aload_3
    //   11: invokeinterface 21 3 0
    //   16: new 23	org/json/JSONObject
    //   19: dup
    //   20: invokespecial 24	org/json/JSONObject:<init>	()V
    //   23: astore 4
    //   25: new 26	org/json/JSONArray
    //   28: dup
    //   29: invokespecial 27	org/json/JSONArray:<init>	()V
    //   32: astore 5
    //   34: aload_3
    //   35: invokevirtual 31	com/xiaomi/settingsdk/backup/data/DataPackage:getDataItems	()Ljava/util/Map;
    //   38: invokeinterface 37 1 0
    //   43: astore 6
    //   45: aconst_null
    //   46: astore 7
    //   48: aconst_null
    //   49: astore 8
    //   51: aconst_null
    //   52: astore 9
    //   54: aload 6
    //   56: ifnull +105 -> 161
    //   59: aload 9
    //   61: astore 10
    //   63: aload 6
    //   65: invokeinterface 43 1 0
    //   70: astore 6
    //   72: aload 9
    //   74: astore 10
    //   76: aload 6
    //   78: invokeinterface 49 1 0
    //   83: ifeq +29 -> 112
    //   86: aload 9
    //   88: astore 10
    //   90: aload 5
    //   92: aload 6
    //   94: invokeinterface 53 1 0
    //   99: checkcast 55	com/xiaomi/settingsdk/backup/data/SettingItem
    //   102: invokevirtual 59	com/xiaomi/settingsdk/backup/data/SettingItem:toJson	()Lorg/json/JSONObject;
    //   105: invokevirtual 63	org/json/JSONArray:put	(Ljava/lang/Object;)Lorg/json/JSONArray;
    //   108: pop
    //   109: goto -37 -> 72
    //   112: aload 9
    //   114: astore 10
    //   116: aload 4
    //   118: ldc 65
    //   120: aload_0
    //   121: invokevirtual 71	android/content/Context:getPackageName	()Ljava/lang/String;
    //   124: invokevirtual 74	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   127: pop
    //   128: aload 9
    //   130: astore 10
    //   132: aload 4
    //   134: ldc 76
    //   136: aload_2
    //   137: aload_0
    //   138: invokeinterface 80 2 0
    //   143: invokevirtual 83	org/json/JSONObject:put	(Ljava/lang/String;I)Lorg/json/JSONObject;
    //   146: pop
    //   147: aload 9
    //   149: astore 10
    //   151: aload 4
    //   153: ldc 85
    //   155: aload 5
    //   157: invokevirtual 74	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   160: pop
    //   161: aload 9
    //   163: astore 10
    //   165: new 87	java/io/FileOutputStream
    //   168: dup
    //   169: aload_1
    //   170: invokevirtual 93	android/os/ParcelFileDescriptor:getFileDescriptor	()Ljava/io/FileDescriptor;
    //   173: invokespecial 96	java/io/FileOutputStream:<init>	(Ljava/io/FileDescriptor;)V
    //   176: astore_0
    //   177: aload_0
    //   178: aload 4
    //   180: invokevirtual 99	org/json/JSONObject:toString	()Ljava/lang/String;
    //   183: ldc 101
    //   185: invokevirtual 107	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   188: invokevirtual 111	java/io/FileOutputStream:write	([B)V
    //   191: aload_0
    //   192: invokevirtual 116	java/io/OutputStream:flush	()V
    //   195: aload_0
    //   196: invokevirtual 119	java/io/FileOutputStream:close	()V
    //   199: aload_0
    //   200: invokestatic 123	l7/b:b	(Ljava/io/OutputStream;)V
    //   203: goto +63 -> 266
    //   206: astore_1
    //   207: aload_0
    //   208: astore 10
    //   210: aload_1
    //   211: astore_0
    //   212: goto +56 -> 268
    //   215: astore_1
    //   216: goto +15 -> 231
    //   219: astore_1
    //   220: goto +30 -> 250
    //   223: astore_0
    //   224: goto +44 -> 268
    //   227: astore_1
    //   228: aload 7
    //   230: astore_0
    //   231: aload_0
    //   232: astore 10
    //   234: ldc 125
    //   236: ldc 127
    //   238: aload_1
    //   239: invokestatic 133	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   242: pop
    //   243: goto +19 -> 262
    //   246: astore_1
    //   247: aload 8
    //   249: astore_0
    //   250: aload_0
    //   251: astore 10
    //   253: ldc 125
    //   255: ldc 135
    //   257: aload_1
    //   258: invokestatic 133	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   261: pop
    //   262: aload_0
    //   263: invokestatic 123	l7/b:b	(Ljava/io/OutputStream;)V
    //   266: aload_3
    //   267: areturn
    //   268: aload 10
    //   270: invokestatic 123	l7/b:b	(Ljava/io/OutputStream;)V
    //   273: aload_0
    //   274: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	275	0	paramContext	android.content.Context
    //   0	275	1	paramParcelFileDescriptor	android.os.ParcelFileDescriptor
    //   0	275	2	parama	a
    //   7	260	3	localDataPackage	com.xiaomi.settingsdk.backup.data.DataPackage
    //   23	156	4	localJSONObject	org.json.JSONObject
    //   32	124	5	localJSONArray	org.json.JSONArray
    //   43	50	6	localObject1	Object
    //   46	183	7	localObject2	Object
    //   49	199	8	localObject3	Object
    //   52	110	9	localObject4	Object
    //   61	208	10	localObject5	Object
    // Exception table:
    //   from	to	target	type
    //   177	199	206	finally
    //   177	199	215	org/json/JSONException
    //   177	199	219	java/io/IOException
    //   63	72	223	finally
    //   76	86	223	finally
    //   90	109	223	finally
    //   116	128	223	finally
    //   132	147	223	finally
    //   151	161	223	finally
    //   165	177	223	finally
    //   234	243	223	finally
    //   253	262	223	finally
    //   63	72	227	org/json/JSONException
    //   76	86	227	org/json/JSONException
    //   90	109	227	org/json/JSONException
    //   116	128	227	org/json/JSONException
    //   132	147	227	org/json/JSONException
    //   151	161	227	org/json/JSONException
    //   165	177	227	org/json/JSONException
    //   63	72	246	java/io/IOException
    //   76	86	246	java/io/IOException
    //   90	109	246	java/io/IOException
    //   116	128	246	java/io/IOException
    //   132	147	246	java/io/IOException
    //   151	161	246	java/io/IOException
    //   165	177	246	java/io/IOException
  }
  
  private static void b(OutputStream paramOutputStream)
  {
    if (paramOutputStream != null) {}
    try
    {
      paramOutputStream.flush();
    }
    catch (IOException localIOException)
    {
      try
      {
        for (;;)
        {
          paramOutputStream.close();
          label12:
          return;
          localIOException = localIOException;
        }
      }
      catch (IOException paramOutputStream)
      {
        break label12;
      }
    }
  }
  
  private static void c(Reader paramReader)
  {
    if (paramReader != null) {}
    try
    {
      paramReader.close();
      label8:
      return;
    }
    catch (IOException paramReader)
    {
      break label8;
    }
  }
  
  /* Error */
  public static void d(android.content.Context paramContext, android.os.ParcelFileDescriptor paramParcelFileDescriptor, a parama)
    throws IOException
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aconst_null
    //   3: astore 4
    //   5: aconst_null
    //   6: astore 5
    //   8: aload 5
    //   10: astore 6
    //   12: new 146	java/io/BufferedReader
    //   15: astore 7
    //   17: aload 5
    //   19: astore 6
    //   21: new 148	java/io/FileReader
    //   24: astore 8
    //   26: aload 5
    //   28: astore 6
    //   30: aload 8
    //   32: aload_1
    //   33: invokevirtual 93	android/os/ParcelFileDescriptor:getFileDescriptor	()Ljava/io/FileDescriptor;
    //   36: invokespecial 149	java/io/FileReader:<init>	(Ljava/io/FileDescriptor;)V
    //   39: aload 5
    //   41: astore 6
    //   43: aload 7
    //   45: aload 8
    //   47: invokespecial 151	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   50: new 153	java/lang/StringBuilder
    //   53: astore_1
    //   54: aload_1
    //   55: invokespecial 154	java/lang/StringBuilder:<init>	()V
    //   58: ldc 156
    //   60: invokestatic 162	java/lang/System:getProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   63: astore 6
    //   65: aload 7
    //   67: invokevirtual 165	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   70: astore_3
    //   71: aload_3
    //   72: ifnull +19 -> 91
    //   75: aload_1
    //   76: aload_3
    //   77: invokevirtual 169	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   80: pop
    //   81: aload_1
    //   82: aload 6
    //   84: invokevirtual 169	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   87: pop
    //   88: goto -23 -> 65
    //   91: new 23	org/json/JSONObject
    //   94: astore 6
    //   96: aload 6
    //   98: aload_1
    //   99: invokevirtual 170	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   102: invokespecial 173	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   105: aload 6
    //   107: invokevirtual 177	org/json/JSONObject:length	()I
    //   110: ifle +89 -> 199
    //   113: aload 6
    //   115: ldc 76
    //   117: invokevirtual 181	org/json/JSONObject:optInt	(Ljava/lang/String;)I
    //   120: istore 9
    //   122: aload 6
    //   124: ldc 85
    //   126: invokevirtual 185	org/json/JSONObject:optJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
    //   129: astore 6
    //   131: new 12	com/xiaomi/settingsdk/backup/data/DataPackage
    //   134: astore_1
    //   135: aload_1
    //   136: invokespecial 16	com/xiaomi/settingsdk/backup/data/DataPackage:<init>	()V
    //   139: aload 6
    //   141: ifnull +48 -> 189
    //   144: iconst_0
    //   145: istore 10
    //   147: iload 10
    //   149: aload 6
    //   151: invokevirtual 186	org/json/JSONArray:length	()I
    //   154: if_icmpge +35 -> 189
    //   157: aload 6
    //   159: iload 10
    //   161: invokevirtual 190	org/json/JSONArray:optJSONObject	(I)Lorg/json/JSONObject;
    //   164: astore_3
    //   165: aload_3
    //   166: ifnull +17 -> 183
    //   169: aload_3
    //   170: invokestatic 194	com/xiaomi/settingsdk/backup/data/SettingItem:fromJson	(Lorg/json/JSONObject;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;
    //   173: astore_3
    //   174: aload_1
    //   175: aload_3
    //   176: getfield 198	com/xiaomi/settingsdk/backup/data/SettingItem:key	Ljava/lang/String;
    //   179: aload_3
    //   180: invokevirtual 202	com/xiaomi/settingsdk/backup/data/DataPackage:addAbstractDataItem	(Ljava/lang/String;Lcom/xiaomi/settingsdk/backup/data/SettingItem;)V
    //   183: iinc 10 1
    //   186: goto -39 -> 147
    //   189: aload_2
    //   190: aload_0
    //   191: aload_1
    //   192: iload 9
    //   194: invokeinterface 205 4 0
    //   199: aload 7
    //   201: invokestatic 207	l7/b:c	(Ljava/io/Reader;)V
    //   204: goto +67 -> 271
    //   207: astore_0
    //   208: aload 7
    //   210: astore 6
    //   212: goto +60 -> 272
    //   215: astore_1
    //   216: aload 7
    //   218: astore_0
    //   219: goto +17 -> 236
    //   222: astore_1
    //   223: aload 7
    //   225: astore_0
    //   226: goto +29 -> 255
    //   229: astore_0
    //   230: goto +42 -> 272
    //   233: astore_1
    //   234: aload_3
    //   235: astore_0
    //   236: aload_0
    //   237: astore 6
    //   239: ldc 125
    //   241: ldc 209
    //   243: aload_1
    //   244: invokestatic 133	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   247: pop
    //   248: goto +19 -> 267
    //   251: astore_1
    //   252: aload 4
    //   254: astore_0
    //   255: aload_0
    //   256: astore 6
    //   258: ldc 125
    //   260: ldc 211
    //   262: aload_1
    //   263: invokestatic 133	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   266: pop
    //   267: aload_0
    //   268: invokestatic 207	l7/b:c	(Ljava/io/Reader;)V
    //   271: return
    //   272: aload 6
    //   274: invokestatic 207	l7/b:c	(Ljava/io/Reader;)V
    //   277: aload_0
    //   278: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	279	0	paramContext	android.content.Context
    //   0	279	1	paramParcelFileDescriptor	android.os.ParcelFileDescriptor
    //   0	279	2	parama	a
    //   1	234	3	localObject1	Object
    //   3	250	4	localObject2	Object
    //   6	34	5	localObject3	Object
    //   10	263	6	localObject4	Object
    //   15	209	7	localBufferedReader	java.io.BufferedReader
    //   24	22	8	localFileReader	java.io.FileReader
    //   120	73	9	i	int
    //   145	39	10	j	int
    // Exception table:
    //   from	to	target	type
    //   50	65	207	finally
    //   65	71	207	finally
    //   75	88	207	finally
    //   91	139	207	finally
    //   147	165	207	finally
    //   169	183	207	finally
    //   189	199	207	finally
    //   50	65	215	org/json/JSONException
    //   65	71	215	org/json/JSONException
    //   75	88	215	org/json/JSONException
    //   91	139	215	org/json/JSONException
    //   147	165	215	org/json/JSONException
    //   169	183	215	org/json/JSONException
    //   189	199	215	org/json/JSONException
    //   50	65	222	java/io/IOException
    //   65	71	222	java/io/IOException
    //   75	88	222	java/io/IOException
    //   91	139	222	java/io/IOException
    //   147	165	222	java/io/IOException
    //   169	183	222	java/io/IOException
    //   189	199	222	java/io/IOException
    //   12	17	229	finally
    //   21	26	229	finally
    //   30	39	229	finally
    //   43	50	229	finally
    //   239	248	229	finally
    //   258	267	229	finally
    //   12	17	233	org/json/JSONException
    //   21	26	233	org/json/JSONException
    //   30	39	233	org/json/JSONException
    //   43	50	233	org/json/JSONException
    //   12	17	251	java/io/IOException
    //   21	26	251	java/io/IOException
    //   30	39	251	java/io/IOException
    //   43	50	251	java/io/IOException
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     l7.b
 * JD-Core Version:    0.7.0.1
 */