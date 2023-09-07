package com.android.dingtalk.openauth.utils;

import java.io.File;
import java.io.FileInputStream;
import java.security.MessageDigest;

class d
{
  static String a(File paramFile)
  {
    return a(paramFile, 102400);
  }
  
  /* Error */
  static String a(File paramFile, int paramInt)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_0
    //   3: ifnull +92 -> 95
    //   6: iload_1
    //   7: ifle +88 -> 95
    //   10: aload_0
    //   11: invokevirtual 25	java/io/File:exists	()Z
    //   14: ifeq +81 -> 95
    //   17: new 27	java/io/FileInputStream
    //   20: astore_3
    //   21: aload_3
    //   22: aload_0
    //   23: invokespecial 30	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   26: iload_1
    //   27: i2l
    //   28: lstore 4
    //   30: lload 4
    //   32: aload_0
    //   33: invokevirtual 34	java/io/File:length	()J
    //   36: lcmp
    //   37: ifgt +6 -> 43
    //   40: goto +9 -> 49
    //   43: aload_0
    //   44: invokevirtual 34	java/io/File:length	()J
    //   47: lstore 4
    //   49: aload_3
    //   50: lload 4
    //   52: l2i
    //   53: invokestatic 37	com/android/dingtalk/openauth/utils/d:a	(Ljava/io/FileInputStream;I)Ljava/lang/String;
    //   56: astore_0
    //   57: aload_3
    //   58: invokevirtual 40	java/io/FileInputStream:close	()V
    //   61: aload_3
    //   62: invokevirtual 40	java/io/FileInputStream:close	()V
    //   65: aload_0
    //   66: areturn
    //   67: astore_0
    //   68: goto +6 -> 74
    //   71: astore_0
    //   72: aload_2
    //   73: astore_3
    //   74: aload_3
    //   75: ifnull +7 -> 82
    //   78: aload_3
    //   79: invokevirtual 40	java/io/FileInputStream:close	()V
    //   82: aload_0
    //   83: athrow
    //   84: astore_0
    //   85: aconst_null
    //   86: astore_3
    //   87: aload_3
    //   88: ifnull +7 -> 95
    //   91: aload_3
    //   92: invokevirtual 40	java/io/FileInputStream:close	()V
    //   95: aconst_null
    //   96: areturn
    //   97: astore_0
    //   98: goto -11 -> 87
    //   101: astore_3
    //   102: goto -37 -> 65
    //   105: astore_3
    //   106: goto -24 -> 82
    //   109: astore_0
    //   110: goto -15 -> 95
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	113	0	paramFile	File
    //   0	113	1	paramInt	int
    //   1	72	2	localObject1	Object
    //   20	72	3	localObject2	Object
    //   101	1	3	localIOException1	java.io.IOException
    //   105	1	3	localIOException2	java.io.IOException
    //   28	23	4	l	long
    // Exception table:
    //   from	to	target	type
    //   30	40	67	finally
    //   43	49	67	finally
    //   49	61	67	finally
    //   17	26	71	finally
    //   17	26	84	java/lang/Exception
    //   30	40	97	java/lang/Exception
    //   43	49	97	java/lang/Exception
    //   49	61	97	java/lang/Exception
    //   61	65	101	java/io/IOException
    //   78	82	105	java/io/IOException
    //   91	95	109	java/io/IOException
  }
  
  /* Error */
  static String a(File paramFile, int paramInt1, int paramInt2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aload_0
    //   3: ifnull +85 -> 88
    //   6: aload_0
    //   7: invokevirtual 25	java/io/File:exists	()Z
    //   10: ifeq +78 -> 88
    //   13: iload_1
    //   14: iflt +74 -> 88
    //   17: iload_2
    //   18: ifle +70 -> 88
    //   21: new 27	java/io/FileInputStream
    //   24: astore 4
    //   26: aload 4
    //   28: aload_0
    //   29: invokespecial 30	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   32: aload 4
    //   34: ldc 12
    //   36: iload_1
    //   37: iload_2
    //   38: invokestatic 44	com/android/dingtalk/openauth/utils/d:a	(Ljava/io/FileInputStream;III)Ljava/lang/String;
    //   41: astore_0
    //   42: aload 4
    //   44: invokevirtual 40	java/io/FileInputStream:close	()V
    //   47: aload 4
    //   49: invokevirtual 40	java/io/FileInputStream:close	()V
    //   52: aload_0
    //   53: areturn
    //   54: astore_0
    //   55: goto +7 -> 62
    //   58: astore_0
    //   59: aload_3
    //   60: astore 4
    //   62: aload 4
    //   64: ifnull +8 -> 72
    //   67: aload 4
    //   69: invokevirtual 40	java/io/FileInputStream:close	()V
    //   72: aload_0
    //   73: athrow
    //   74: astore_0
    //   75: aconst_null
    //   76: astore 4
    //   78: aload 4
    //   80: ifnull +8 -> 88
    //   83: aload 4
    //   85: invokevirtual 40	java/io/FileInputStream:close	()V
    //   88: aconst_null
    //   89: areturn
    //   90: astore_0
    //   91: goto -13 -> 78
    //   94: astore 4
    //   96: goto -44 -> 52
    //   99: astore 4
    //   101: goto -29 -> 72
    //   104: astore_0
    //   105: goto -17 -> 88
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	108	0	paramFile	File
    //   0	108	1	paramInt1	int
    //   0	108	2	paramInt2	int
    //   1	59	3	localObject1	Object
    //   24	60	4	localObject2	Object
    //   94	1	4	localIOException1	java.io.IOException
    //   99	1	4	localIOException2	java.io.IOException
    // Exception table:
    //   from	to	target	type
    //   32	47	54	finally
    //   21	32	58	finally
    //   21	32	74	java/lang/Exception
    //   32	47	90	java/lang/Exception
    //   47	52	94	java/io/IOException
    //   67	72	99	java/io/IOException
    //   83	88	104	java/io/IOException
  }
  
  static final String a(FileInputStream paramFileInputStream, int paramInt)
  {
    if ((paramFileInputStream != null) && (paramInt > 0)) {}
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
      StringBuilder localStringBuilder = new java/lang/StringBuilder;
      localStringBuilder.<init>(32);
      byte[] arrayOfByte = new byte[paramInt];
      for (;;)
      {
        int i = paramFileInputStream.read(arrayOfByte);
        paramInt = 0;
        if (i == -1) {
          break;
        }
        localMessageDigest.update(arrayOfByte, 0, i);
      }
      paramFileInputStream = localMessageDigest.digest();
      while (paramInt < paramFileInputStream.length)
      {
        localStringBuilder.append(Integer.toString((paramFileInputStream[paramInt] & 0xFF) + 256, 16).substring(1));
        paramInt++;
      }
      paramFileInputStream = localStringBuilder.toString();
      return paramFileInputStream;
    }
    catch (Exception paramFileInputStream)
    {
      label106:
      break label106;
    }
    return null;
  }
  
  static final String a(FileInputStream paramFileInputStream, int paramInt1, int paramInt2, int paramInt3)
  {
    long l;
    if ((paramFileInputStream != null) && (paramInt1 > 0) && (paramInt2 >= 0) && (paramInt3 > 0)) {
      l = paramInt2;
    }
    try
    {
      if (paramFileInputStream.skip(l) < l) {
        return null;
      }
      MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
      StringBuilder localStringBuilder = new java/lang/StringBuilder;
      localStringBuilder.<init>(32);
      byte[] arrayOfByte = new byte[paramInt1];
      paramInt2 = 0;
      paramInt1 = 0;
      for (;;)
      {
        int i = paramFileInputStream.read(arrayOfByte);
        if ((i == -1) || (paramInt1 >= paramInt3)) {
          break;
        }
        int j = paramInt1 + i;
        if (j <= paramInt3)
        {
          localMessageDigest.update(arrayOfByte, 0, i);
          paramInt1 = j;
        }
        else
        {
          localMessageDigest.update(arrayOfByte, 0, paramInt3 - paramInt1);
          paramInt1 = paramInt3;
        }
      }
      paramFileInputStream = localMessageDigest.digest();
      for (paramInt1 = paramInt2; paramInt1 < paramFileInputStream.length; paramInt1++) {
        localStringBuilder.append(Integer.toString((paramFileInputStream[paramInt1] & 0xFF) + 256, 16).substring(1));
      }
      paramFileInputStream = localStringBuilder.toString();
      return paramFileInputStream;
    }
    catch (Exception paramFileInputStream)
    {
      label179:
      break label179;
    }
    return null;
  }
  
  static String a(String paramString)
  {
    Object localObject = null;
    if (paramString == null)
    {
      paramString = localObject;
    }
    else
    {
      File localFile = new File(paramString);
      paramString = localObject;
      if (localFile.exists()) {
        paramString = a(localFile, 102400);
      }
    }
    return paramString;
  }
  
  static String a(String paramString, int paramInt1, int paramInt2)
  {
    Object localObject = null;
    if (paramString == null)
    {
      paramString = localObject;
    }
    else
    {
      File localFile = new File(paramString);
      paramString = localObject;
      if (localFile.exists()) {
        paramString = a(localFile, paramInt1, paramInt2);
      }
    }
    return paramString;
  }
  
  static final String a(byte[] paramArrayOfByte)
  {
    char[] arrayOfChar = new char[16];
    char[] tmp6_5 = arrayOfChar;
    tmp6_5[0] = 48;
    char[] tmp11_6 = tmp6_5;
    tmp11_6[1] = 49;
    char[] tmp16_11 = tmp11_6;
    tmp16_11[2] = 50;
    char[] tmp21_16 = tmp16_11;
    tmp21_16[3] = 51;
    char[] tmp26_21 = tmp21_16;
    tmp26_21[4] = 52;
    char[] tmp31_26 = tmp26_21;
    tmp31_26[5] = 53;
    char[] tmp36_31 = tmp31_26;
    tmp36_31[6] = 54;
    char[] tmp42_36 = tmp36_31;
    tmp42_36[7] = 55;
    char[] tmp48_42 = tmp42_36;
    tmp48_42[8] = 56;
    char[] tmp54_48 = tmp48_42;
    tmp54_48[9] = 57;
    char[] tmp60_54 = tmp54_48;
    tmp60_54[10] = 97;
    char[] tmp66_60 = tmp60_54;
    tmp66_60[11] = 98;
    char[] tmp72_66 = tmp66_60;
    tmp72_66[12] = 99;
    char[] tmp78_72 = tmp72_66;
    tmp78_72[13] = 100;
    char[] tmp84_78 = tmp78_72;
    tmp84_78[14] = 101;
    char[] tmp90_84 = tmp84_78;
    tmp90_84[15] = 102;
    tmp90_84;
    try
    {
      Object localObject = MessageDigest.getInstance("MD5");
      ((MessageDigest)localObject).update(paramArrayOfByte);
      localObject = ((MessageDigest)localObject).digest();
      int i = localObject.length;
      paramArrayOfByte = new char[i * 2];
      int j = 0;
      int k = 0;
      while (j < i)
      {
        int m = localObject[j];
        int n = k + 1;
        paramArrayOfByte[k] = ((char)arrayOfChar[(m >>> 4 & 0xF)]);
        k = n + 1;
        paramArrayOfByte[n] = ((char)arrayOfChar[(m & 0xF)]);
        j++;
      }
      paramArrayOfByte = new String(paramArrayOfByte);
      return paramArrayOfByte;
    }
    catch (Exception paramArrayOfByte) {}
    return null;
  }
  
  static final byte[] b(byte[] paramArrayOfByte)
  {
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
      localMessageDigest.update(paramArrayOfByte);
      paramArrayOfByte = localMessageDigest.digest();
      return paramArrayOfByte;
    }
    catch (Exception paramArrayOfByte) {}
    return null;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.dingtalk.openauth.utils.d
 * JD-Core Version:    0.7.0.1
 */