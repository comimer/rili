package androidx.room;

import java.util.Iterator;
import java.util.Map.Entry;
import java.util.NavigableSet;
import java.util.TreeMap;
import l0.d;
import l0.e;

public class m
  implements e, d
{
  static final TreeMap<Integer, m> i = new TreeMap();
  private volatile String a;
  final long[] b;
  final double[] c;
  final String[] d;
  final byte[][] e;
  private final int[] f;
  final int g;
  int h;
  
  private m(int paramInt)
  {
    this.g = paramInt;
    paramInt++;
    this.f = new int[paramInt];
    this.b = new long[paramInt];
    this.c = new double[paramInt];
    this.d = new String[paramInt];
    this.e = new byte[paramInt][];
  }
  
  public static m j(String paramString, int paramInt)
  {
    synchronized (i)
    {
      Object localObject2 = ((TreeMap)???).ceilingEntry(Integer.valueOf(paramInt));
      if (localObject2 != null)
      {
        ((TreeMap)???).remove(((Map.Entry)localObject2).getKey());
        localObject2 = (m)((Map.Entry)localObject2).getValue();
        ((m)localObject2).s(paramString, paramInt);
        return localObject2;
      }
      ??? = new m(paramInt);
      ((m)???).s(paramString, paramInt);
      return ???;
    }
  }
  
  public static m q(e parame)
  {
    m localm = j(parame.d(), parame.c());
    parame.e(new a(localm));
    return localm;
  }
  
  private static void x()
  {
    Object localObject = i;
    if (((TreeMap)localObject).size() > 15)
    {
      int j = ((TreeMap)localObject).size() - 10;
      localObject = ((TreeMap)localObject).descendingKeySet().iterator();
      while (j > 0)
      {
        ((Iterator)localObject).next();
        ((Iterator)localObject).remove();
        j--;
      }
    }
  }
  
  public void B(int paramInt, long paramLong)
  {
    this.f[paramInt] = 2;
    this.b[paramInt] = paramLong;
  }
  
  public void F(int paramInt, byte[] paramArrayOfByte)
  {
    this.f[paramInt] = 5;
    this.e[paramInt] = paramArrayOfByte;
  }
  
  public void X(int paramInt)
  {
    this.f[paramInt] = 1;
  }
  
  public int c()
  {
    return this.h;
  }
  
  public void close() {}
  
  public String d()
  {
    return this.a;
  }
  
  public void e(d paramd)
  {
    for (int j = 1; j <= this.h; j++)
    {
      int k = this.f[j];
      if (k != 1)
      {
        if (k != 2)
        {
          if (k != 3)
          {
            if (k != 4)
            {
              if (k == 5) {
                paramd.F(j, this.e[j]);
              }
            }
            else {
              paramd.l(j, this.d[j]);
            }
          }
          else {
            paramd.r(j, this.c[j]);
          }
        }
        else {
          paramd.B(j, this.b[j]);
        }
      }
      else {
        paramd.X(j);
      }
    }
  }
  
  public void l(int paramInt, String paramString)
  {
    this.f[paramInt] = 4;
    this.d[paramInt] = paramString;
  }
  
  public void m(m paramm)
  {
    int j = paramm.c() + 1;
    System.arraycopy(paramm.f, 0, this.f, 0, j);
    System.arraycopy(paramm.b, 0, this.b, 0, j);
    System.arraycopy(paramm.d, 0, this.d, 0, j);
    System.arraycopy(paramm.e, 0, this.e, 0, j);
    System.arraycopy(paramm.c, 0, this.c, 0, j);
  }
  
  public void r(int paramInt, double paramDouble)
  {
    this.f[paramInt] = 3;
    this.c[paramInt] = paramDouble;
  }
  
  void s(String paramString, int paramInt)
  {
    this.a = paramString;
    this.h = paramInt;
  }
  
  public void z()
  {
    synchronized (i)
    {
      ???.put(Integer.valueOf(this.g), this);
      x();
      return;
    }
  }
  
  static final class a
    implements d
  {
    a(m paramm) {}
    
    public void B(int paramInt, long paramLong)
    {
      this.a.B(paramInt, paramLong);
    }
    
    public void F(int paramInt, byte[] paramArrayOfByte)
    {
      this.a.F(paramInt, paramArrayOfByte);
    }
    
    public void X(int paramInt)
    {
      this.a.X(paramInt);
    }
    
    public void close() {}
    
    public void l(int paramInt, String paramString)
    {
      this.a.l(paramInt, paramString);
    }
    
    public void r(int paramInt, double paramDouble)
    {
      this.a.r(paramInt, paramDouble);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.room.m
 * JD-Core Version:    0.7.0.1
 */