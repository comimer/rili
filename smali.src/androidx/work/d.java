package androidx.work;

import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class d
{
  private static final String b = k.f("Data");
  public static final d c = new a().a();
  Map<String, Object> a;
  
  d() {}
  
  public d(d paramd)
  {
    this.a = new HashMap(paramd.a);
  }
  
  public d(Map<String, ?> paramMap)
  {
    this.a = new HashMap(paramMap);
  }
  
  public static Boolean[] a(boolean[] paramArrayOfBoolean)
  {
    Boolean[] arrayOfBoolean = new Boolean[paramArrayOfBoolean.length];
    for (int i = 0; i < paramArrayOfBoolean.length; i++) {
      arrayOfBoolean[i] = Boolean.valueOf(paramArrayOfBoolean[i]);
    }
    return arrayOfBoolean;
  }
  
  public static Byte[] b(byte[] paramArrayOfByte)
  {
    Byte[] arrayOfByte = new Byte[paramArrayOfByte.length];
    for (int i = 0; i < paramArrayOfByte.length; i++) {
      arrayOfByte[i] = Byte.valueOf(paramArrayOfByte[i]);
    }
    return arrayOfByte;
  }
  
  public static Double[] c(double[] paramArrayOfDouble)
  {
    Double[] arrayOfDouble = new Double[paramArrayOfDouble.length];
    for (int i = 0; i < paramArrayOfDouble.length; i++) {
      arrayOfDouble[i] = Double.valueOf(paramArrayOfDouble[i]);
    }
    return arrayOfDouble;
  }
  
  public static Float[] d(float[] paramArrayOfFloat)
  {
    Float[] arrayOfFloat = new Float[paramArrayOfFloat.length];
    for (int i = 0; i < paramArrayOfFloat.length; i++) {
      arrayOfFloat[i] = Float.valueOf(paramArrayOfFloat[i]);
    }
    return arrayOfFloat;
  }
  
  public static Integer[] e(int[] paramArrayOfInt)
  {
    Integer[] arrayOfInteger = new Integer[paramArrayOfInt.length];
    for (int i = 0; i < paramArrayOfInt.length; i++) {
      arrayOfInteger[i] = Integer.valueOf(paramArrayOfInt[i]);
    }
    return arrayOfInteger;
  }
  
  public static Long[] f(long[] paramArrayOfLong)
  {
    Long[] arrayOfLong = new Long[paramArrayOfLong.length];
    for (int i = 0; i < paramArrayOfLong.length; i++) {
      arrayOfLong[i] = Long.valueOf(paramArrayOfLong[i]);
    }
    return arrayOfLong;
  }
  
  /* Error */
  public static d g(byte[] paramArrayOfByte)
  {
    // Byte code:
    //   0: aload_0
    //   1: arraylength
    //   2: sipush 10240
    //   5: if_icmpgt +221 -> 226
    //   8: new 38	java/util/HashMap
    //   11: dup
    //   12: invokespecial 91	java/util/HashMap:<init>	()V
    //   15: astore_1
    //   16: new 93	java/io/ByteArrayInputStream
    //   19: dup
    //   20: aload_0
    //   21: invokespecial 96	java/io/ByteArrayInputStream:<init>	([B)V
    //   24: astore_2
    //   25: new 98	java/io/ObjectInputStream
    //   28: astore_3
    //   29: aload_3
    //   30: aload_2
    //   31: invokespecial 101	java/io/ObjectInputStream:<init>	(Ljava/io/InputStream;)V
    //   34: aload_3
    //   35: astore_0
    //   36: aload_3
    //   37: invokevirtual 105	java/io/ObjectInputStream:readInt	()I
    //   40: istore 4
    //   42: iload 4
    //   44: ifle +26 -> 70
    //   47: aload_3
    //   48: astore_0
    //   49: aload_1
    //   50: aload_3
    //   51: invokevirtual 109	java/io/ObjectInputStream:readUTF	()Ljava/lang/String;
    //   54: aload_3
    //   55: invokevirtual 113	java/io/ObjectInputStream:readObject	()Ljava/lang/Object;
    //   58: invokeinterface 119 3 0
    //   63: pop
    //   64: iinc 4 255
    //   67: goto -25 -> 42
    //   70: aload_3
    //   71: invokevirtual 122	java/io/ObjectInputStream:close	()V
    //   74: goto +14 -> 88
    //   77: astore_0
    //   78: getstatic 25	androidx/work/d:b	Ljava/lang/String;
    //   81: ldc 124
    //   83: aload_0
    //   84: invokestatic 129	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   87: pop
    //   88: aload_2
    //   89: invokevirtual 130	java/io/ByteArrayInputStream:close	()V
    //   92: goto +82 -> 174
    //   95: astore 5
    //   97: goto +24 -> 121
    //   100: astore 5
    //   102: goto +19 -> 121
    //   105: astore_3
    //   106: aconst_null
    //   107: astore_0
    //   108: goto +76 -> 184
    //   111: astore_0
    //   112: goto +4 -> 116
    //   115: astore_0
    //   116: aconst_null
    //   117: astore_3
    //   118: aload_0
    //   119: astore 5
    //   121: aload_3
    //   122: astore_0
    //   123: getstatic 25	androidx/work/d:b	Ljava/lang/String;
    //   126: ldc 124
    //   128: aload 5
    //   130: invokestatic 129	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   133: pop
    //   134: aload_3
    //   135: ifnull +21 -> 156
    //   138: aload_3
    //   139: invokevirtual 122	java/io/ObjectInputStream:close	()V
    //   142: goto +14 -> 156
    //   145: astore_0
    //   146: getstatic 25	androidx/work/d:b	Ljava/lang/String;
    //   149: ldc 124
    //   151: aload_0
    //   152: invokestatic 129	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   155: pop
    //   156: aload_2
    //   157: invokevirtual 130	java/io/ByteArrayInputStream:close	()V
    //   160: goto +14 -> 174
    //   163: astore_0
    //   164: getstatic 25	androidx/work/d:b	Ljava/lang/String;
    //   167: ldc 124
    //   169: aload_0
    //   170: invokestatic 129	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   173: pop
    //   174: new 2	androidx/work/d
    //   177: dup
    //   178: aload_1
    //   179: invokespecial 131	androidx/work/d:<init>	(Ljava/util/Map;)V
    //   182: areturn
    //   183: astore_3
    //   184: aload_0
    //   185: ifnull +21 -> 206
    //   188: aload_0
    //   189: invokevirtual 122	java/io/ObjectInputStream:close	()V
    //   192: goto +14 -> 206
    //   195: astore_0
    //   196: getstatic 25	androidx/work/d:b	Ljava/lang/String;
    //   199: ldc 124
    //   201: aload_0
    //   202: invokestatic 129	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   205: pop
    //   206: aload_2
    //   207: invokevirtual 130	java/io/ByteArrayInputStream:close	()V
    //   210: goto +14 -> 224
    //   213: astore_0
    //   214: getstatic 25	androidx/work/d:b	Ljava/lang/String;
    //   217: ldc 124
    //   219: aload_0
    //   220: invokestatic 129	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   223: pop
    //   224: aload_3
    //   225: athrow
    //   226: new 133	java/lang/IllegalStateException
    //   229: dup
    //   230: ldc 135
    //   232: invokespecial 138	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
    //   235: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	236	0	paramArrayOfByte	byte[]
    //   15	164	1	localHashMap	HashMap
    //   24	183	2	localByteArrayInputStream	java.io.ByteArrayInputStream
    //   28	43	3	localObjectInputStream	java.io.ObjectInputStream
    //   105	1	3	localObject1	Object
    //   117	22	3	localObject2	Object
    //   183	42	3	localObject3	Object
    //   40	25	4	i	int
    //   95	1	5	localClassNotFoundException	java.lang.ClassNotFoundException
    //   100	1	5	localIOException	java.io.IOException
    //   119	10	5	arrayOfByte	byte[]
    // Exception table:
    //   from	to	target	type
    //   70	74	77	java/io/IOException
    //   36	42	95	java/lang/ClassNotFoundException
    //   49	64	95	java/lang/ClassNotFoundException
    //   36	42	100	java/io/IOException
    //   49	64	100	java/io/IOException
    //   25	34	105	finally
    //   25	34	111	java/lang/ClassNotFoundException
    //   25	34	115	java/io/IOException
    //   138	142	145	java/io/IOException
    //   88	92	163	java/io/IOException
    //   156	160	163	java/io/IOException
    //   36	42	183	finally
    //   49	64	183	finally
    //   123	134	183	finally
    //   188	192	195	java/io/IOException
    //   206	210	213	java/io/IOException
  }
  
  /* Error */
  public static byte[] k(d paramd)
  {
    // Byte code:
    //   0: new 142	java/io/ByteArrayOutputStream
    //   3: dup
    //   4: invokespecial 143	java/io/ByteArrayOutputStream:<init>	()V
    //   7: astore_1
    //   8: aconst_null
    //   9: astore_2
    //   10: aconst_null
    //   11: astore_3
    //   12: aload_3
    //   13: astore 4
    //   15: new 145	java/io/ObjectOutputStream
    //   18: astore 5
    //   20: aload_3
    //   21: astore 4
    //   23: aload 5
    //   25: aload_1
    //   26: invokespecial 148	java/io/ObjectOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   29: aload 5
    //   31: aload_0
    //   32: invokevirtual 151	androidx/work/d:j	()I
    //   35: invokevirtual 155	java/io/ObjectOutputStream:writeInt	(I)V
    //   38: aload_0
    //   39: getfield 40	androidx/work/d:a	Ljava/util/Map;
    //   42: invokeinterface 159 1 0
    //   47: invokeinterface 165 1 0
    //   52: astore_0
    //   53: aload_0
    //   54: invokeinterface 171 1 0
    //   59: ifeq +44 -> 103
    //   62: aload_0
    //   63: invokeinterface 174 1 0
    //   68: checkcast 176	java/util/Map$Entry
    //   71: astore 4
    //   73: aload 5
    //   75: aload 4
    //   77: invokeinterface 179 1 0
    //   82: checkcast 181	java/lang/String
    //   85: invokevirtual 184	java/io/ObjectOutputStream:writeUTF	(Ljava/lang/String;)V
    //   88: aload 5
    //   90: aload 4
    //   92: invokeinterface 187 1 0
    //   97: invokevirtual 191	java/io/ObjectOutputStream:writeObject	(Ljava/lang/Object;)V
    //   100: goto -47 -> 53
    //   103: aload 5
    //   105: invokevirtual 192	java/io/ObjectOutputStream:close	()V
    //   108: goto +14 -> 122
    //   111: astore_0
    //   112: getstatic 25	androidx/work/d:b	Ljava/lang/String;
    //   115: ldc 194
    //   117: aload_0
    //   118: invokestatic 129	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   121: pop
    //   122: aload_1
    //   123: invokevirtual 195	java/io/ByteArrayOutputStream:close	()V
    //   126: goto +14 -> 140
    //   129: astore_0
    //   130: getstatic 25	androidx/work/d:b	Ljava/lang/String;
    //   133: ldc 194
    //   135: aload_0
    //   136: invokestatic 129	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   139: pop
    //   140: aload_1
    //   141: invokevirtual 198	java/io/ByteArrayOutputStream:size	()I
    //   144: sipush 10240
    //   147: if_icmpgt +8 -> 155
    //   150: aload_1
    //   151: invokevirtual 202	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   154: areturn
    //   155: new 133	java/lang/IllegalStateException
    //   158: dup
    //   159: ldc 135
    //   161: invokespecial 138	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
    //   164: athrow
    //   165: astore_0
    //   166: aload 5
    //   168: astore 4
    //   170: goto +89 -> 259
    //   173: astore 4
    //   175: aload 5
    //   177: astore_0
    //   178: aload 4
    //   180: astore 5
    //   182: goto +11 -> 193
    //   185: astore_0
    //   186: goto +73 -> 259
    //   189: astore 5
    //   191: aload_2
    //   192: astore_0
    //   193: aload_0
    //   194: astore 4
    //   196: getstatic 25	androidx/work/d:b	Ljava/lang/String;
    //   199: ldc 194
    //   201: aload 5
    //   203: invokestatic 129	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   206: pop
    //   207: aload_0
    //   208: astore 4
    //   210: aload_1
    //   211: invokevirtual 202	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   214: astore 5
    //   216: aload_0
    //   217: ifnull +21 -> 238
    //   220: aload_0
    //   221: invokevirtual 192	java/io/ObjectOutputStream:close	()V
    //   224: goto +14 -> 238
    //   227: astore_0
    //   228: getstatic 25	androidx/work/d:b	Ljava/lang/String;
    //   231: ldc 194
    //   233: aload_0
    //   234: invokestatic 129	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   237: pop
    //   238: aload_1
    //   239: invokevirtual 195	java/io/ByteArrayOutputStream:close	()V
    //   242: goto +14 -> 256
    //   245: astore_0
    //   246: getstatic 25	androidx/work/d:b	Ljava/lang/String;
    //   249: ldc 194
    //   251: aload_0
    //   252: invokestatic 129	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   255: pop
    //   256: aload 5
    //   258: areturn
    //   259: aload 4
    //   261: ifnull +24 -> 285
    //   264: aload 4
    //   266: invokevirtual 192	java/io/ObjectOutputStream:close	()V
    //   269: goto +16 -> 285
    //   272: astore 4
    //   274: getstatic 25	androidx/work/d:b	Ljava/lang/String;
    //   277: ldc 194
    //   279: aload 4
    //   281: invokestatic 129	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   284: pop
    //   285: aload_1
    //   286: invokevirtual 195	java/io/ByteArrayOutputStream:close	()V
    //   289: goto +16 -> 305
    //   292: astore 4
    //   294: getstatic 25	androidx/work/d:b	Ljava/lang/String;
    //   297: ldc 194
    //   299: aload 4
    //   301: invokestatic 129	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   304: pop
    //   305: aload_0
    //   306: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	307	0	paramd	d
    //   7	279	1	localByteArrayOutputStream	java.io.ByteArrayOutputStream
    //   9	183	2	localObject1	Object
    //   11	10	3	localObject2	Object
    //   13	156	4	localObject3	Object
    //   173	6	4	localIOException1	java.io.IOException
    //   194	71	4	locald	d
    //   272	8	4	localIOException2	java.io.IOException
    //   292	8	4	localIOException3	java.io.IOException
    //   18	163	5	localObject4	Object
    //   189	13	5	localIOException4	java.io.IOException
    //   214	43	5	arrayOfByte	byte[]
    // Exception table:
    //   from	to	target	type
    //   103	108	111	java/io/IOException
    //   122	126	129	java/io/IOException
    //   29	53	165	finally
    //   53	100	165	finally
    //   29	53	173	java/io/IOException
    //   53	100	173	java/io/IOException
    //   15	20	185	finally
    //   23	29	185	finally
    //   196	207	185	finally
    //   210	216	185	finally
    //   15	20	189	java/io/IOException
    //   23	29	189	java/io/IOException
    //   220	224	227	java/io/IOException
    //   238	242	245	java/io/IOException
    //   264	269	272	java/io/IOException
    //   285	289	292	java/io/IOException
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if ((paramObject != null) && (d.class == paramObject.getClass()))
    {
      paramObject = (d)paramObject;
      Object localObject1 = this.a.keySet();
      if (!((Set)localObject1).equals(paramObject.a.keySet())) {
        return false;
      }
      Iterator localIterator = ((Set)localObject1).iterator();
      while (localIterator.hasNext())
      {
        Object localObject2 = (String)localIterator.next();
        localObject1 = this.a.get(localObject2);
        localObject2 = paramObject.a.get(localObject2);
        boolean bool;
        if ((localObject1 != null) && (localObject2 != null))
        {
          if (((localObject1 instanceof Object[])) && ((localObject2 instanceof Object[]))) {
            bool = Arrays.deepEquals((Object[])localObject1, (Object[])localObject2);
          } else {
            bool = localObject1.equals(localObject2);
          }
        }
        else if (localObject1 == localObject2) {
          bool = true;
        } else {
          bool = false;
        }
        if (!bool) {
          return false;
        }
      }
      return true;
    }
    return false;
  }
  
  public Map<String, Object> h()
  {
    return Collections.unmodifiableMap(this.a);
  }
  
  public int hashCode()
  {
    return this.a.hashCode() * 31;
  }
  
  public String i(String paramString)
  {
    paramString = this.a.get(paramString);
    if ((paramString instanceof String)) {
      return (String)paramString;
    }
    return null;
  }
  
  public int j()
  {
    return this.a.size();
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("Data {");
    if (!this.a.isEmpty())
    {
      Iterator localIterator = this.a.keySet().iterator();
      while (localIterator.hasNext())
      {
        Object localObject = (String)localIterator.next();
        localStringBuilder.append((String)localObject);
        localStringBuilder.append(" : ");
        localObject = this.a.get(localObject);
        if ((localObject instanceof Object[])) {
          localStringBuilder.append(Arrays.toString((Object[])localObject));
        } else {
          localStringBuilder.append(localObject);
        }
        localStringBuilder.append(", ");
      }
    }
    localStringBuilder.append("}");
    return localStringBuilder.toString();
  }
  
  public static final class a
  {
    private Map<String, Object> a = new HashMap();
    
    public d a()
    {
      d locald = new d(this.a);
      d.k(locald);
      return locald;
    }
    
    public a b(String paramString, Object paramObject)
    {
      if (paramObject == null)
      {
        this.a.put(paramString, null);
      }
      else
      {
        Class localClass = paramObject.getClass();
        if ((localClass != Boolean.class) && (localClass != Byte.class) && (localClass != Integer.class) && (localClass != Long.class) && (localClass != Float.class) && (localClass != Double.class) && (localClass != String.class) && (localClass != [Ljava.lang.Boolean.class) && (localClass != [Ljava.lang.Byte.class) && (localClass != [Ljava.lang.Integer.class) && (localClass != [Ljava.lang.Long.class) && (localClass != [Ljava.lang.Float.class) && (localClass != [Ljava.lang.Double.class) && (localClass != [Ljava.lang.String.class))
        {
          if (localClass == [Z.class) {
            this.a.put(paramString, d.a((boolean[])paramObject));
          } else if (localClass == [B.class) {
            this.a.put(paramString, d.b((byte[])paramObject));
          } else if (localClass == [I.class) {
            this.a.put(paramString, d.e((int[])paramObject));
          } else if (localClass == [J.class) {
            this.a.put(paramString, d.f((long[])paramObject));
          } else if (localClass == [F.class) {
            this.a.put(paramString, d.d((float[])paramObject));
          } else if (localClass == [D.class) {
            this.a.put(paramString, d.c((double[])paramObject));
          } else {
            throw new IllegalArgumentException(String.format("Key %s has invalid type %s", new Object[] { paramString, localClass }));
          }
        }
        else {
          this.a.put(paramString, paramObject);
        }
      }
      return this;
    }
    
    public a c(Map<String, Object> paramMap)
    {
      Iterator localIterator = paramMap.entrySet().iterator();
      while (localIterator.hasNext())
      {
        paramMap = (Map.Entry)localIterator.next();
        b((String)paramMap.getKey(), paramMap.getValue());
      }
      return this;
    }
    
    public a d(String paramString1, String paramString2)
    {
      this.a.put(paramString1, paramString2);
      return this;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.work.d
 * JD-Core Version:    0.7.0.1
 */