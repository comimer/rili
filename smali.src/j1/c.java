package j1;

import android.graphics.PointF;
import com.airbnb.lottie.h;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.parser.moshi.JsonReader.Token;
import com.airbnb.lottie.parser.moshi.JsonReader.a;
import f1.b;
import f1.e;
import f1.g;
import f1.i;
import f1.l;
import f1.m;
import java.io.IOException;
import java.util.List;

public class c
{
  private static final JsonReader.a a = JsonReader.a.a(new String[] { "a", "p", "s", "rz", "r", "o", "so", "eo", "sk", "sa" });
  private static final JsonReader.a b = JsonReader.a.a(new String[] { "k" });
  
  private static boolean a(e parame)
  {
    boolean bool1 = false;
    boolean bool2;
    if (parame != null)
    {
      bool2 = bool1;
      if (parame.l())
      {
        bool2 = bool1;
        if (!((PointF)((l1.a)parame.n().get(0)).b).equals(0.0F, 0.0F)) {}
      }
    }
    else
    {
      bool2 = true;
    }
    return bool2;
  }
  
  private static boolean b(m<PointF, PointF> paramm)
  {
    boolean bool1 = false;
    boolean bool2;
    if (paramm != null)
    {
      bool2 = bool1;
      if (!(paramm instanceof i))
      {
        bool2 = bool1;
        if (paramm.l())
        {
          bool2 = bool1;
          if (!((PointF)((l1.a)paramm.n().get(0)).b).equals(0.0F, 0.0F)) {}
        }
      }
    }
    else
    {
      bool2 = true;
    }
    return bool2;
  }
  
  private static boolean c(b paramb)
  {
    boolean bool1 = false;
    boolean bool2;
    if (paramb != null)
    {
      bool2 = bool1;
      if (paramb.l())
      {
        bool2 = bool1;
        if (((Float)((l1.a)paramb.n().get(0)).b).floatValue() != 0.0F) {}
      }
    }
    else
    {
      bool2 = true;
    }
    return bool2;
  }
  
  private static boolean d(g paramg)
  {
    boolean bool1 = false;
    boolean bool2;
    if (paramg != null)
    {
      bool2 = bool1;
      if (paramg.l())
      {
        bool2 = bool1;
        if (!((l1.d)((l1.a)paramg.n().get(0)).b).a(1.0F, 1.0F)) {}
      }
    }
    else
    {
      bool2 = true;
    }
    return bool2;
  }
  
  private static boolean e(b paramb)
  {
    boolean bool1 = false;
    boolean bool2;
    if (paramb != null)
    {
      bool2 = bool1;
      if (paramb.l())
      {
        bool2 = bool1;
        if (((Float)((l1.a)paramb.n().get(0)).b).floatValue() != 0.0F) {}
      }
    }
    else
    {
      bool2 = true;
    }
    return bool2;
  }
  
  private static boolean f(b paramb)
  {
    boolean bool1 = false;
    boolean bool2;
    if (paramb != null)
    {
      bool2 = bool1;
      if (paramb.l())
      {
        bool2 = bool1;
        if (((Float)((l1.a)paramb.n().get(0)).b).floatValue() != 0.0F) {}
      }
    }
    else
    {
      bool2 = true;
    }
    return bool2;
  }
  
  public static l g(JsonReader paramJsonReader, h paramh)
    throws IOException
  {
    Object localObject1 = paramJsonReader.W();
    Object localObject2 = JsonReader.Token.BEGIN_OBJECT;
    boolean bool = false;
    int i;
    if (localObject1 == localObject2) {
      i = 1;
    } else {
      i = 0;
    }
    if (i != 0) {
      paramJsonReader.e();
    }
    Object localObject3 = null;
    e locale = null;
    Object localObject4 = null;
    g localg = null;
    localObject1 = null;
    localObject2 = null;
    f1.d locald = null;
    b localb1 = null;
    b localb2 = null;
    while (paramJsonReader.q()) {
      switch (paramJsonReader.a0(a))
      {
      default: 
        paramJsonReader.c0();
        paramJsonReader.d0();
        break;
      case 9: 
        localObject2 = d.f(paramJsonReader, paramh, bool);
        break;
      case 8: 
        localObject1 = d.f(paramJsonReader, paramh, bool);
        break;
      case 7: 
        localb2 = d.f(paramJsonReader, paramh, bool);
        break;
      case 6: 
        localb1 = d.f(paramJsonReader, paramh, bool);
        break;
      case 5: 
        locald = d.h(paramJsonReader, paramh);
        break;
      case 3: 
        paramh.a("Lottie doesn't support 3D layers.");
      case 4: 
        localObject3 = d.f(paramJsonReader, paramh, bool);
        if (((b)localObject3).n().isEmpty()) {
          ((b)localObject3).n().add(new l1.a(paramh, Float.valueOf(0.0F), Float.valueOf(0.0F), null, 0.0F, Float.valueOf(paramh.f())));
        } else if (((l1.a)((b)localObject3).n().get(0)).b == null) {
          ((b)localObject3).n().set(0, new l1.a(paramh, Float.valueOf(0.0F), Float.valueOf(0.0F), null, 0.0F, Float.valueOf(paramh.f())));
        }
        bool = false;
        break;
      case 2: 
        localg = d.j(paramJsonReader, paramh);
        break;
      case 1: 
        localObject4 = a.b(paramJsonReader, paramh);
        break;
      case 0: 
        paramJsonReader.e();
        while (paramJsonReader.q()) {
          if (paramJsonReader.a0(b) != 0)
          {
            paramJsonReader.c0();
            paramJsonReader.d0();
          }
          else
          {
            locale = a.a(paramJsonReader, paramh);
          }
        }
        paramJsonReader.m();
      }
    }
    if (i != 0) {
      paramJsonReader.m();
    }
    if (a(locale)) {
      paramJsonReader = null;
    } else {
      paramJsonReader = locale;
    }
    if (b((m)localObject4)) {
      paramh = null;
    } else {
      paramh = (h)localObject4;
    }
    if (c((b)localObject3)) {
      localObject4 = null;
    } else {
      localObject4 = localObject3;
    }
    localObject3 = localg;
    if (d(localg)) {
      localObject3 = null;
    }
    if (f((b)localObject1)) {
      localObject1 = null;
    }
    if (e((b)localObject2)) {
      localObject2 = null;
    }
    return new l(paramJsonReader, paramh, (g)localObject3, (b)localObject4, locald, localb1, localb2, (b)localObject1, (b)localObject2);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     j1.c
 * JD-Core Version:    0.7.0.1
 */