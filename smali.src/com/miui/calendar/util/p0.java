package com.miui.calendar.util;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.TreeSet;

public class p0
{
  private ContentResolver a;
  private Uri b;
  private String[] c;
  private Class[] d;
  private StringBuilder e;
  private String[] f;
  private String g;
  private ContentValues h;
  private int i = -1;
  private boolean j;
  
  private static void b(Uri paramUri)
  {
    if (paramUri != null) {
      return;
    }
    throw new IllegalArgumentException("Uri must be specified!");
  }
  
  private static void c(ContentValues paramContentValues)
  {
    if (paramContentValues != null) {
      return;
    }
    throw new IllegalArgumentException("ContentValues must be specified!");
  }
  
  public static p0 d(Context paramContext)
  {
    p0 localp0 = new p0();
    localp0.a = paramContext.getContentResolver();
    return localp0;
  }
  
  private void e(int paramInt)
  {
    if (this.d == null)
    {
      this.d = new Class[paramInt];
      for (int k = 0; k < paramInt; k++) {
        this.d[k] = String.class;
      }
    }
  }
  
  private static Object f(Cursor paramCursor, int paramInt, Class paramClass)
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
  
  private static String g(StringBuilder paramStringBuilder)
  {
    if (paramStringBuilder == null) {
      paramStringBuilder = null;
    } else {
      paramStringBuilder = paramStringBuilder.toString();
    }
    return paramStringBuilder;
  }
  
  public Uri h()
  {
    b(this.b);
    c(this.h);
    return this.a.insert(this.b, this.h);
  }
  
  /* Error */
  public b i()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 129	com/miui/calendar/util/p0:b	Landroid/net/Uri;
    //   4: invokestatic 131	com/miui/calendar/util/p0:b	(Landroid/net/Uri;)V
    //   7: aload_0
    //   8: getfield 146	com/miui/calendar/util/p0:e	Ljava/lang/StringBuilder;
    //   11: invokestatic 148	com/miui/calendar/util/p0:g	(Ljava/lang/StringBuilder;)Ljava/lang/String;
    //   14: astore_1
    //   15: invokestatic 150	com/miui/calendar/util/p0$b:j	()Lcom/miui/calendar/util/p0$b;
    //   18: astore_2
    //   19: aconst_null
    //   20: astore_3
    //   21: aconst_null
    //   22: astore 4
    //   24: aload_0
    //   25: getfield 60	com/miui/calendar/util/p0:a	Landroid/content/ContentResolver;
    //   28: aload_0
    //   29: getfield 129	com/miui/calendar/util/p0:b	Landroid/net/Uri;
    //   32: aload_0
    //   33: getfield 152	com/miui/calendar/util/p0:c	[Ljava/lang/String;
    //   36: aload_1
    //   37: aload_0
    //   38: getfield 154	com/miui/calendar/util/p0:f	[Ljava/lang/String;
    //   41: aload_0
    //   42: getfield 156	com/miui/calendar/util/p0:g	Ljava/lang/String;
    //   45: invokevirtual 160	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   48: astore_1
    //   49: aload_1
    //   50: ifnull +165 -> 215
    //   53: aload_1
    //   54: astore 4
    //   56: aload_1
    //   57: astore_3
    //   58: aload_0
    //   59: getfield 162	com/miui/calendar/util/p0:j	Z
    //   62: ifeq +22 -> 84
    //   65: aload_1
    //   66: astore 4
    //   68: aload_1
    //   69: astore_3
    //   70: aload_2
    //   71: aload_1
    //   72: invokeinterface 166 1 0
    //   77: invokestatic 169	com/miui/calendar/util/p0$b:d	(Lcom/miui/calendar/util/p0$b;I)I
    //   80: pop
    //   81: goto +134 -> 215
    //   84: aload_1
    //   85: astore 4
    //   87: aload_1
    //   88: astore_3
    //   89: aload_0
    //   90: getfield 152	com/miui/calendar/util/p0:c	[Ljava/lang/String;
    //   93: arraylength
    //   94: istore 5
    //   96: aload_1
    //   97: astore 4
    //   99: aload_1
    //   100: astore_3
    //   101: aload_0
    //   102: iload 5
    //   104: invokespecial 171	com/miui/calendar/util/p0:e	(I)V
    //   107: aload_1
    //   108: astore 4
    //   110: aload_1
    //   111: astore_3
    //   112: aload_1
    //   113: invokeinterface 175 1 0
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
    //   156: getfield 63	com/miui/calendar/util/p0:d	[Ljava/lang/Class;
    //   159: iload 7
    //   161: aaload
    //   162: invokestatic 39	com/miui/calendar/util/p0:f	(Landroid/database/Cursor;ILjava/lang/Class;)Ljava/lang/Object;
    //   165: aastore
    //   166: iinc 7 1
    //   169: goto -33 -> 136
    //   172: aload_1
    //   173: astore 4
    //   175: aload_1
    //   176: astore_3
    //   177: aload_2
    //   178: aload 6
    //   180: invokestatic 178	com/miui/calendar/util/p0$c:a	([Ljava/lang/Object;)Lcom/miui/calendar/util/p0$c;
    //   183: invokevirtual 181	com/miui/calendar/util/p0$b:h	(Lcom/miui/calendar/util/p0$c;)V
    //   186: aload_1
    //   187: astore 4
    //   189: aload_1
    //   190: astore_3
    //   191: aload_2
    //   192: invokestatic 184	com/miui/calendar/util/p0$b:c	(Lcom/miui/calendar/util/p0$b;)I
    //   195: istore 7
    //   197: aload_1
    //   198: astore 4
    //   200: aload_1
    //   201: astore_3
    //   202: aload_0
    //   203: getfield 35	com/miui/calendar/util/p0:i	I
    //   206: istore 8
    //   208: iload 7
    //   210: iload 8
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
    //   232: ldc 186
    //   234: ldc 188
    //   236: aload_1
    //   237: invokestatic 193	com/miui/calendar/util/z:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   240: aload_3
    //   241: ifnull +9 -> 250
    //   244: aload_3
    //   245: invokeinterface 196 1 0
    //   250: aload_2
    //   251: areturn
    //   252: aload 4
    //   254: ifnull +10 -> 264
    //   257: aload 4
    //   259: invokeinterface 196 1 0
    //   264: aload_3
    //   265: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	266	0	this	p0
    //   14	206	1	localObject1	Object
    //   228	9	1	localException	Exception
    //   18	233	2	localb	b
    //   20	201	3	localObject2	Object
    //   224	41	3	localObject3	Object
    //   22	236	4	localObject4	Object
    //   94	47	5	k	int
    //   131	48	6	arrayOfObject	Object[]
    //   134	79	7	m	int
    //   206	7	8	n	int
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
  
  public int j()
  {
    this.j = true;
    return b.c(i());
  }
  
  public a k()
  {
    b(this.b);
    Object localObject = g(this.e);
    Cursor localCursor;
    try
    {
      localObject = this.a.query(this.b, this.c, (String)localObject, this.f, this.g);
    }
    catch (Exception localException)
    {
      z.d("Cal:D:SimpleProvider", "queryCursor(): ", localException);
      localCursor = null;
    }
    return a.b(localCursor, this.d);
  }
  
  public b l()
  {
    return p(1).i();
  }
  
  public int m()
  {
    b(this.b);
    c(this.h);
    return this.a.update(this.b, this.h, g(this.e), this.f);
  }
  
  public p0 n(Object... paramVarArgs)
  {
    int k = paramVarArgs.length;
    this.f = new String[k];
    for (int m = 0; m < k; m++) {
      this.f[m] = String.valueOf(paramVarArgs[m]);
    }
    return this;
  }
  
  public p0 o(String... paramVarArgs)
  {
    this.f = paramVarArgs;
    return this;
  }
  
  public p0 p(int paramInt)
  {
    this.i = paramInt;
    return this;
  }
  
  public p0 q(String paramString)
  {
    this.g = paramString;
    return this;
  }
  
  public p0 r(String... paramVarArgs)
  {
    this.c = paramVarArgs;
    return this;
  }
  
  public p0 s(String paramString)
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
  
  public p0 t(Class... paramVarArgs)
  {
    this.d = paramVarArgs;
    return this;
  }
  
  public p0 u(Uri paramUri)
  {
    this.b = paramUri;
    return this;
  }
  
  public p0 v(ContentValues paramContentValues)
  {
    this.h = paramContentValues;
    return this;
  }
  
  public static class a
  {
    private Cursor a;
    private Class[] b;
    private TreeSet<Integer> c;
    private boolean d;
    
    public static a b(Cursor paramCursor, Class[] paramArrayOfClass)
    {
      a locala = new a();
      locala.a = paramCursor;
      locala.b = paramArrayOfClass;
      return locala;
    }
    
    public void a()
    {
      Cursor localCursor = this.a;
      if (localCursor != null) {
        localCursor.close();
      }
    }
    
    public void c(boolean paramBoolean)
    {
      this.d = paramBoolean;
    }
    
    public p0.c d(int paramInt)
    {
      int i = paramInt;
      Object localObject;
      if (e())
      {
        localObject = this.c.iterator();
        for (;;)
        {
          i = paramInt;
          if (!((Iterator)localObject).hasNext()) {
            break;
          }
          if (((Integer)((Iterator)localObject).next()).intValue() <= paramInt) {
            paramInt++;
          }
        }
      }
      if (this.b != null)
      {
        localObject = this.a;
        if ((localObject != null) && (((Cursor)localObject).moveToPosition(i)))
        {
          localObject = new Object[this.b.length];
          for (paramInt = 0;; paramInt++)
          {
            Class[] arrayOfClass = this.b;
            if (paramInt >= arrayOfClass.length) {
              break;
            }
            localObject[paramInt] = p0.a(this.a, paramInt, arrayOfClass[paramInt]);
          }
          return p0.c.a((Object[])localObject);
        }
      }
      return null;
    }
    
    public boolean e()
    {
      boolean bool;
      if ((this.d) && (this.c != null)) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
    
    public void f(TreeSet<Integer> paramTreeSet)
    {
      this.c = paramTreeSet;
    }
    
    public int g()
    {
      int i;
      if (this.a != null)
      {
        if (e()) {
          i = this.a.getCount() - this.c.size();
        } else {
          i = this.a.getCount();
        }
      }
      else {
        i = 0;
      }
      return i;
    }
  }
  
  public static class b
    implements Iterable<p0.c>
  {
    private ArrayList<p0.c> a;
    private int b;
    
    public static b j()
    {
      b localb = new b();
      localb.a = new ArrayList(0);
      return localb;
    }
    
    public void h(p0.c paramc)
    {
      this.a.add(paramc);
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
    
    public Iterator<p0.c> iterator()
    {
      return this.a.iterator();
    }
    
    public p0.c k()
    {
      return (p0.c)this.a.get(0);
    }
    
    public p0.c l(int paramInt)
    {
      return (p0.c)this.a.get(paramInt);
    }
    
    public int size()
    {
      return this.a.size();
    }
  }
  
  public static class c
  {
    private Object[] a;
    
    private c(Object[] paramArrayOfObject)
    {
      this.a = paramArrayOfObject;
    }
    
    public static c a(Object[] paramArrayOfObject)
    {
      return new c(paramArrayOfObject);
    }
    
    public String b()
    {
      return (String)this.a[0];
    }
    
    public String c(int paramInt)
    {
      return (String)this.a[paramInt];
    }
    
    public Integer d()
    {
      return (Integer)this.a[0];
    }
    
    public Integer e(int paramInt)
    {
      return (Integer)this.a[paramInt];
    }
    
    public Long f()
    {
      return (Long)this.a[0];
    }
    
    public Long g(int paramInt)
    {
      return (Long)this.a[paramInt];
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.util.p0
 * JD-Core Version:    0.7.0.1
 */