package k1;

import android.graphics.Path;
import android.graphics.PointF;
import b1.c;
import b1.k;
import e1.a;
import e1.d;
import g1.i;
import java.util.List;

public class g
{
  private static final PointF a = new PointF();
  
  public static PointF a(PointF paramPointF1, PointF paramPointF2)
  {
    return new PointF(paramPointF1.x + paramPointF2.x, paramPointF1.y + paramPointF2.y);
  }
  
  public static float b(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    return Math.max(paramFloat2, Math.min(paramFloat3, paramFloat1));
  }
  
  public static int c(int paramInt1, int paramInt2, int paramInt3)
  {
    return Math.max(paramInt2, Math.min(paramInt3, paramInt1));
  }
  
  public static boolean d(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    boolean bool;
    if ((paramFloat1 >= paramFloat2) && (paramFloat1 <= paramFloat3)) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private static int e(int paramInt1, int paramInt2)
  {
    int i = paramInt1 / paramInt2;
    int j;
    if ((paramInt1 ^ paramInt2) >= 0) {
      j = 1;
    } else {
      j = 0;
    }
    int k = i;
    if (j == 0)
    {
      k = i;
      if (paramInt1 % paramInt2 != 0) {
        k = i - 1;
      }
    }
    return k;
  }
  
  static int f(float paramFloat1, float paramFloat2)
  {
    return g((int)paramFloat1, (int)paramFloat2);
  }
  
  private static int g(int paramInt1, int paramInt2)
  {
    return paramInt1 - paramInt2 * e(paramInt1, paramInt2);
  }
  
  public static void h(i parami, Path paramPath)
  {
    paramPath.reset();
    PointF localPointF1 = parami.b();
    paramPath.moveTo(localPointF1.x, localPointF1.y);
    a.set(localPointF1.x, localPointF1.y);
    for (int i = 0; i < parami.a().size(); i++)
    {
      Object localObject = (a)parami.a().get(i);
      localPointF1 = ((a)localObject).a();
      PointF localPointF2 = ((a)localObject).b();
      localObject = ((a)localObject).c();
      PointF localPointF3 = a;
      if ((localPointF1.equals(localPointF3)) && (localPointF2.equals(localObject))) {
        paramPath.lineTo(((PointF)localObject).x, ((PointF)localObject).y);
      } else {
        paramPath.cubicTo(localPointF1.x, localPointF1.y, localPointF2.x, localPointF2.y, ((PointF)localObject).x, ((PointF)localObject).y);
      }
      localPointF3.set(((PointF)localObject).x, ((PointF)localObject).y);
    }
    if (parami.d()) {
      paramPath.close();
    }
  }
  
  public static float i(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    return paramFloat1 + paramFloat3 * (paramFloat2 - paramFloat1);
  }
  
  public static int j(int paramInt1, int paramInt2, float paramFloat)
  {
    return (int)(paramInt1 + paramFloat * (paramInt2 - paramInt1));
  }
  
  public static void k(d paramd1, int paramInt, List<d> paramList, d paramd2, k paramk)
  {
    if (paramd1.c(paramk.getName(), paramInt)) {
      paramList.add(paramd2.a(paramk.getName()).i(paramk));
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     k1.g
 * JD-Core Version:    0.7.0.1
 */