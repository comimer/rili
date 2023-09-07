package t1;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import java.util.ArrayList;
import java.util.Iterator;

public class c
{
  private ContentResolver a;
  private Uri b;
  private String[] c;
  private Class[] d;
  private StringBuilder e;
  private String[] f;
  private String g;
  private int h = -1;
  private boolean i;
  
  private static void a(Uri paramUri)
  {
    if (paramUri != null) {
      return;
    }
    throw new IllegalArgumentException("Uri must be specified!");
  }
  
  public static c b(Context paramContext)
  {
    c localc = new c();
    localc.a = paramContext.getContentResolver();
    return localc;
  }
  
  private void c(int paramInt)
  {
    if (this.d == null)
    {
      this.d = new Class[paramInt];
      for (int j = 0; j < paramInt; j++) {
        this.d[j] = String.class;
      }
    }
  }
  
  private static Object d(Cursor paramCursor, int paramInt, Class paramClass)
  {
    if (Short.class == paramClass) {
      return Short.valueOf(paramCursor.getShort(paramInt));
    }
    if (Integer.class == paramClass) {
      return Integer.valueOf(paramCursor.getInt(paramInt));
    }
    if (Long.class == paramClass) {
      return Long.valueOf(paramCursor.getLong(paramInt));
    }
    if (Float.class == paramClass) {
      return Float.valueOf(paramCursor.getFloat(paramInt));
    }
    if (Double.class == paramClass) {
      return Double.valueOf(paramCursor.getDouble(paramInt));
    }
    return paramCursor.getString(paramInt);
  }
  
  private static String e(StringBuilder paramStringBuilder)
  {
    if (paramStringBuilder == null) {
      paramStringBuilder = null;
    } else {
      paramStringBuilder = paramStringBuilder.toString();
    }
    return paramStringBuilder;
  }
  
  /* Error */
  public a f()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 122	t1/c:b	Landroid/net/Uri;
    //   4: invokestatic 124	t1/c:a	(Landroid/net/Uri;)V
    //   7: aload_0
    //   8: getfield 126	t1/c:e	Ljava/lang/StringBuilder;
    //   11: invokestatic 128	t1/c:e	(Ljava/lang/StringBuilder;)Ljava/lang/String;
    //   14: astore_1
    //   15: invokestatic 131	t1/c$a:j	()Lt1/c$a;
    //   18: astore_2
    //   19: aconst_null
    //   20: astore_3
    //   21: aconst_null
    //   22: astore 4
    //   24: aload_0
    //   25: getfield 50	t1/c:a	Landroid/content/ContentResolver;
    //   28: aload_0
    //   29: getfield 122	t1/c:b	Landroid/net/Uri;
    //   32: aload_0
    //   33: getfield 133	t1/c:c	[Ljava/lang/String;
    //   36: aload_1
    //   37: aload_0
    //   38: getfield 135	t1/c:f	[Ljava/lang/String;
    //   41: aload_0
    //   42: getfield 137	t1/c:g	Ljava/lang/String;
    //   45: invokevirtual 143	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   48: astore_1
    //   49: aload_1
    //   50: ifnull +165 -> 215
    //   53: aload_1
    //   54: astore 4
    //   56: aload_1
    //   57: astore_3
    //   58: aload_0
    //   59: getfield 145	t1/c:i	Z
    //   62: ifeq +22 -> 84
    //   65: aload_1
    //   66: astore 4
    //   68: aload_1
    //   69: astore_3
    //   70: aload_2
    //   71: aload_1
    //   72: invokeinterface 149 1 0
    //   77: invokestatic 152	t1/c$a:d	(Lt1/c$a;I)I
    //   80: pop
    //   81: goto +134 -> 215
    //   84: aload_1
    //   85: astore 4
    //   87: aload_1
    //   88: astore_3
    //   89: aload_0
    //   90: getfield 133	t1/c:c	[Ljava/lang/String;
    //   93: arraylength
    //   94: istore 5
    //   96: aload_1
    //   97: astore 4
    //   99: aload_1
    //   100: astore_3
    //   101: aload_0
    //   102: iload 5
    //   104: invokespecial 154	t1/c:c	(I)V
    //   107: aload_1
    //   108: astore 4
    //   110: aload_1
    //   111: astore_3
    //   112: aload_1
    //   113: invokeinterface 158 1 0
    //   118: ifeq +97 -> 215
    //   121: aload_1
    //   122: astore 4
    //   124: aload_1
    //   125: astore_3
    //   126: iload 5
    //   128: anewarray 4	java/lang/Object
    //   131: astore 6
    //   133: iconst_0
    //   134: istore 7
    //   136: iload 7
    //   138: iload 5
    //   140: if_icmpge +32 -> 172
    //   143: aload_1
    //   144: astore 4
    //   146: aload_1
    //   147: astore_3
    //   148: aload 6
    //   150: iload 7
    //   152: aload_1
    //   153: iload 7
    //   155: aload_0
    //   156: getfield 53	t1/c:d	[Ljava/lang/Class;
    //   159: iload 7
    //   161: aaload
    //   162: invokestatic 160	t1/c:d	(Landroid/database/Cursor;ILjava/lang/Class;)Ljava/lang/Object;
    //   165: aastore
    //   166: iinc 7 1
    //   169: goto -33 -> 136
    //   172: aload_1
    //   173: astore 4
    //   175: aload_1
    //   176: astore_3
    //   177: aload_2
    //   178: aload 6
    //   180: invokestatic 163	t1/c$b:a	([Ljava/lang/Object;)Lt1/c$b;
    //   183: invokevirtual 166	t1/c$a:h	(Lt1/c$b;)V
    //   186: aload_1
    //   187: astore 4
    //   189: aload_1
    //   190: astore_3
    //   191: aload_2
    //   192: invokestatic 169	t1/c$a:c	(Lt1/c$a;)I
    //   195: istore 8
    //   197: aload_1
    //   198: astore 4
    //   200: aload_1
    //   201: astore_3
    //   202: aload_0
    //   203: getfield 31	t1/c:h	I
    //   206: istore 7
    //   208: iload 8
    //   210: iload 7
    //   212: if_icmpne -105 -> 107
    //   215: aload_1
    //   216: ifnull +34 -> 250
    //   219: aload_1
    //   220: astore_3
    //   221: goto +23 -> 244
    //   224: astore_3
    //   225: goto +27 -> 252
    //   228: astore_1
    //   229: aload_3
    //   230: astore 4
    //   232: ldc 171
    //   234: ldc 173
    //   236: aload_1
    //   237: invokestatic 178	t1/b:c	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   240: aload_3
    //   241: ifnull +9 -> 250
    //   244: aload_3
    //   245: invokeinterface 181 1 0
    //   250: aload_2
    //   251: areturn
    //   252: aload 4
    //   254: ifnull +10 -> 264
    //   257: aload 4
    //   259: invokeinterface 181 1 0
    //   264: aload_3
    //   265: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	266	0	this	c
    //   14	206	1	localObject1	Object
    //   228	9	1	localException	java.lang.Exception
    //   18	233	2	locala	a
    //   20	201	3	localObject2	Object
    //   224	41	3	localObject3	Object
    //   22	236	4	localObject4	Object
    //   94	47	5	j	int
    //   131	48	6	arrayOfObject	Object[]
    //   134	79	7	k	int
    //   195	18	8	m	int
    // Exception table:
    //   from	to	target	type
    //   24	49	224	finally
    //   58	65	224	finally
    //   70	81	224	finally
    //   89	96	224	finally
    //   101	107	224	finally
    //   112	121	224	finally
    //   126	133	224	finally
    //   148	166	224	finally
    //   177	186	224	finally
    //   191	197	224	finally
    //   202	208	224	finally
    //   232	240	224	finally
    //   24	49	228	java/lang/Exception
    //   58	65	228	java/lang/Exception
    //   70	81	228	java/lang/Exception
    //   89	96	228	java/lang/Exception
    //   101	107	228	java/lang/Exception
    //   112	121	228	java/lang/Exception
    //   126	133	228	java/lang/Exception
    //   148	166	228	java/lang/Exception
    //   177	186	228	java/lang/Exception
    //   191	197	228	java/lang/Exception
    //   202	208	228	java/lang/Exception
  }
  
  public int g()
  {
    this.i = true;
    return a.c(f());
  }
  
  public c h(Object... paramVarArgs)
  {
    int j = paramVarArgs.length;
    this.f = new String[j];
    for (int k = 0; k < j; k++) {
      this.f[k] = String.valueOf(paramVarArgs[k]);
    }
    return this;
  }
  
  public c i(String... paramVarArgs)
  {
    this.f = paramVarArgs;
    return this;
  }
  
  public c j(String... paramVarArgs)
  {
    this.c = paramVarArgs;
    return this;
  }
  
  public c k(String paramString)
  {
    StringBuilder localStringBuilder = this.e;
    if (localStringBuilder == null)
    {
      localStringBuilder = new StringBuilder();
      this.e = localStringBuilder;
      localStringBuilder.append(paramString);
    }
    else
    {
      localStringBuilder.append(" AND (");
      localStringBuilder.append(paramString);
      localStringBuilder.append(")");
    }
    return this;
  }
  
  public c l(Class... paramVarArgs)
  {
    this.d = paramVarArgs;
    return this;
  }
  
  public c m(Uri paramUri)
  {
    this.b = paramUri;
    return this;
  }
  
  public static class a
    implements Iterable<c.b>
  {
    private ArrayList<c.b> a;
    private int b;
    
    public static a j()
    {
      a locala = new a();
      locala.a = new ArrayList(0);
      return locala;
    }
    
    public void h(c.b paramb)
    {
      this.a.add(paramb);
      this.b += 1;
    }
    
    public boolean isEmpty()
    {
      ArrayList localArrayList = this.a;
      boolean bool;
      if ((localArrayList != null) && (!localArrayList.isEmpty())) {
        bool = false;
      } else {
        bool = true;
      }
      return bool;
    }
    
    public Iterator<c.b> iterator()
    {
      return this.a.iterator();
    }
    
    public c.b k()
    {
      return (c.b)this.a.get(0);
    }
  }
  
  public static class b
  {
    private Object[] a;
    
    private b(Object[] paramArrayOfObject)
    {
      this.a = paramArrayOfObject;
    }
    
    public static b a(Object[] paramArrayOfObject)
    {
      return new b(paramArrayOfObject);
    }
    
    public String b(int paramInt)
    {
      return (String)this.a[paramInt];
    }
    
    public Integer c(int paramInt)
    {
      return (Integer)this.a[paramInt];
    }
    
    public Long d(int paramInt)
    {
      return (Long)this.a[paramInt];
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     t1.c
 * JD-Core Version:    0.7.0.1
 */