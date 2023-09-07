package l0;

public final class a
  implements e
{
  private final String a;
  private final Object[] b;
  
  public a(String paramString)
  {
    this(paramString, null);
  }
  
  public a(String paramString, Object[] paramArrayOfObject)
  {
    this.a = paramString;
    this.b = paramArrayOfObject;
  }
  
  private static void a(d paramd, int paramInt, Object paramObject)
  {
    if (paramObject == null)
    {
      paramd.X(paramInt);
    }
    else if ((paramObject instanceof byte[]))
    {
      paramd.F(paramInt, (byte[])paramObject);
    }
    else if ((paramObject instanceof Float))
    {
      paramd.r(paramInt, ((Float)paramObject).floatValue());
    }
    else if ((paramObject instanceof Double))
    {
      paramd.r(paramInt, ((Double)paramObject).doubleValue());
    }
    else if ((paramObject instanceof Long))
    {
      paramd.B(paramInt, ((Long)paramObject).longValue());
    }
    else if ((paramObject instanceof Integer))
    {
      paramd.B(paramInt, ((Integer)paramObject).intValue());
    }
    else if ((paramObject instanceof Short))
    {
      paramd.B(paramInt, ((Short)paramObject).shortValue());
    }
    else if ((paramObject instanceof Byte))
    {
      paramd.B(paramInt, ((Byte)paramObject).byteValue());
    }
    else if ((paramObject instanceof String))
    {
      paramd.l(paramInt, (String)paramObject);
    }
    else
    {
      if (!(paramObject instanceof Boolean)) {
        break label237;
      }
      long l;
      if (((Boolean)paramObject).booleanValue()) {
        l = 1L;
      } else {
        l = 0L;
      }
      paramd.B(paramInt, l);
    }
    return;
    label237:
    paramd = new StringBuilder();
    paramd.append("Cannot bind ");
    paramd.append(paramObject);
    paramd.append(" at index ");
    paramd.append(paramInt);
    paramd.append(" Supported types: null, byte[], float, double, long, int, short, byte, string");
    throw new IllegalArgumentException(paramd.toString());
  }
  
  public static void b(d paramd, Object[] paramArrayOfObject)
  {
    if (paramArrayOfObject == null) {
      return;
    }
    int i = paramArrayOfObject.length;
    int j = 0;
    while (j < i)
    {
      Object localObject = paramArrayOfObject[j];
      j++;
      a(paramd, j, localObject);
    }
  }
  
  public int c()
  {
    Object[] arrayOfObject = this.b;
    int i;
    if (arrayOfObject == null) {
      i = 0;
    } else {
      i = arrayOfObject.length;
    }
    return i;
  }
  
  public String d()
  {
    return this.a;
  }
  
  public void e(d paramd)
  {
    b(paramd, this.b);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     l0.a
 * JD-Core Version:    0.7.0.1
 */