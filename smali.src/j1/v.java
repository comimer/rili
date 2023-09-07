package j1;

import android.graphics.Color;
import android.graphics.Rect;
import com.airbnb.lottie.model.layer.Layer;
import com.airbnb.lottie.model.layer.Layer.LayerType;
import com.airbnb.lottie.model.layer.Layer.MatteType;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.parser.moshi.JsonReader.a;
import f1.l;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class v
{
  private static final JsonReader.a a = JsonReader.a.a(new String[] { "nm", "ind", "refId", "ty", "parent", "sw", "sh", "sc", "ks", "tt", "masksProperties", "shapes", "t", "ef", "sr", "st", "w", "h", "ip", "op", "tm", "cl", "hd" });
  private static final JsonReader.a b = JsonReader.a.a(new String[] { "d", "a" });
  private static final JsonReader.a c = JsonReader.a.a(new String[] { "ty", "nm" });
  
  public static Layer a(com.airbnb.lottie.h paramh)
  {
    Rect localRect = paramh.b();
    return new Layer(Collections.emptyList(), paramh, "__container", -1L, Layer.LayerType.PRE_COMP, -1L, null, Collections.emptyList(), new l(), 0, 0, 0, 0.0F, 0.0F, localRect.width(), localRect.height(), null, null, Collections.emptyList(), Layer.MatteType.NONE, null, false, null, null);
  }
  
  public static Layer b(JsonReader paramJsonReader, com.airbnb.lottie.h paramh)
    throws IOException
  {
    Object localObject1 = Layer.MatteType.NONE;
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2 = new ArrayList();
    paramJsonReader.e();
    Float localFloat1 = Float.valueOf(1.0F);
    Float localFloat2 = Float.valueOf(0.0F);
    float f1 = 1.0F;
    int i = 0;
    int j = i;
    int k = j;
    int m = k;
    int n = m;
    int i1 = n;
    Object localObject2 = null;
    Object localObject3 = localObject2;
    Object localObject4 = localObject3;
    Object localObject5 = localObject4;
    Object localObject6 = localObject5;
    Object localObject7 = localObject6;
    Object localObject8 = localObject7;
    Object localObject9 = localObject8;
    float f2 = 0.0F;
    float f3 = f2;
    float f4 = f3;
    long l1 = -1L;
    long l2 = 0L;
    Object localObject10 = localObject9;
    Object localObject11 = "UNSET";
    Object localObject12 = localObject9;
    localObject9 = localObject8;
    localObject8 = localObject1;
    localObject1 = localObject5;
    localObject5 = localObject3;
    localObject3 = localObject2;
    localObject2 = localObject11;
    boolean bool;
    while (paramJsonReader.q())
    {
      int i2;
      switch (paramJsonReader.a0(a))
      {
      default: 
        paramJsonReader.c0();
        paramJsonReader.d0();
        break;
      case 22: 
        bool = paramJsonReader.s();
        break;
      case 21: 
        localObject10 = paramJsonReader.H();
        break;
      case 20: 
        localObject7 = d.f(paramJsonReader, paramh, false);
        break;
      case 19: 
        f4 = (float)paramJsonReader.x();
        break;
      case 18: 
        f2 = (float)paramJsonReader.x();
        break;
      case 17: 
        n = (int)(paramJsonReader.z() * k1.h.e());
        break;
      case 16: 
        m = (int)(paramJsonReader.z() * k1.h.e());
        break;
      case 15: 
        f3 = (float)paramJsonReader.x();
        break;
      case 14: 
        f1 = (float)paramJsonReader.x();
        break;
      case 13: 
        paramJsonReader.d();
        localObject11 = new ArrayList();
        while (paramJsonReader.q())
        {
          paramJsonReader.e();
          while (paramJsonReader.q())
          {
            i2 = paramJsonReader.a0(c);
            if (i2 != 0)
            {
              if (i2 != 1)
              {
                paramJsonReader.c0();
                paramJsonReader.d0();
              }
              else
              {
                ((List)localObject11).add(paramJsonReader.H());
              }
            }
            else
            {
              i2 = paramJsonReader.z();
              if (i2 == 29) {
                localObject9 = e.b(paramJsonReader, paramh);
              } else if (i2 == 25) {
                localObject12 = new k().b(paramJsonReader, paramh);
              }
            }
          }
          paramJsonReader.m();
        }
        paramJsonReader.j();
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Lottie doesn't support layer effects. If you are using them for  fills, strokes, trim paths etc. then try adding them directly as contents  in your shape. Found: ");
        localStringBuilder.append(localObject11);
        paramh.a(localStringBuilder.toString());
        break;
      case 12: 
        paramJsonReader.e();
        while (paramJsonReader.q())
        {
          i2 = paramJsonReader.a0(b);
          if (i2 != 0)
          {
            if (i2 != 1)
            {
              paramJsonReader.c0();
              paramJsonReader.d0();
            }
            else
            {
              paramJsonReader.d();
              if (paramJsonReader.q()) {
                localObject6 = b.a(paramJsonReader, paramh);
              }
              while (paramJsonReader.q()) {
                paramJsonReader.d0();
              }
              paramJsonReader.j();
            }
          }
          else {
            localObject1 = d.d(paramJsonReader, paramh);
          }
        }
        paramJsonReader.m();
        break;
      case 11: 
        paramJsonReader.d();
        while (paramJsonReader.q())
        {
          localObject11 = h.a(paramJsonReader, paramh);
          if (localObject11 != null) {
            localArrayList2.add(localObject11);
          }
        }
        paramJsonReader.j();
        break;
      case 10: 
        paramJsonReader.d();
        while (paramJsonReader.q()) {
          localArrayList1.add(x.a(paramJsonReader, paramh));
        }
        paramh.r(localArrayList1.size());
        paramJsonReader.j();
        break;
      case 9: 
        i2 = paramJsonReader.z();
        if (i2 >= Layer.MatteType.values().length)
        {
          localObject11 = new StringBuilder();
          ((StringBuilder)localObject11).append("Unsupported matte type: ");
          ((StringBuilder)localObject11).append(i2);
          paramh.a(((StringBuilder)localObject11).toString());
        }
        else
        {
          localObject8 = Layer.MatteType.values()[i2];
          i2 = a.a[localObject8.ordinal()];
          if (i2 != 1)
          {
            if (i2 == 2) {
              paramh.a("Unsupported matte type: Luma Inverted");
            }
          }
          else {
            paramh.a("Unsupported matte type: Luma");
          }
          paramh.r(1);
        }
        break;
      case 8: 
        localObject4 = c.g(paramJsonReader, paramh);
        break;
      case 7: 
        k = Color.parseColor(paramJsonReader.H());
        break;
      case 6: 
        j = (int)(paramJsonReader.z() * k1.h.e());
        break;
      case 5: 
        i = (int)(paramJsonReader.z() * k1.h.e());
        break;
      case 4: 
        l1 = paramJsonReader.z();
        break;
      case 3: 
        i2 = paramJsonReader.z();
        localObject11 = Layer.LayerType.UNKNOWN;
        localObject3 = localObject11;
        if (i2 < ((Enum)localObject11).ordinal()) {
          localObject3 = Layer.LayerType.values()[i2];
        }
        break;
      case 2: 
        localObject5 = paramJsonReader.H();
        break;
      case 1: 
        l2 = paramJsonReader.z();
        break;
      case 0: 
        localObject2 = paramJsonReader.H();
      }
    }
    paramJsonReader.m();
    paramJsonReader = new ArrayList();
    if (f2 > 0.0F) {
      paramJsonReader.add(new l1.a(paramh, localFloat2, localFloat2, null, 0.0F, Float.valueOf(f2)));
    }
    if (f4 <= 0.0F) {
      f4 = paramh.f();
    }
    paramJsonReader.add(new l1.a(paramh, localFloat1, localFloat1, null, f2, Float.valueOf(f4)));
    paramJsonReader.add(new l1.a(paramh, localFloat2, localFloat2, null, f4, Float.valueOf(3.4028235E+38F)));
    if ((((String)localObject2).endsWith(".ai")) || ("ai".equals(localObject10))) {
      paramh.a("Convert your Illustrator layers to shape layers.");
    }
    return new Layer(localArrayList2, paramh, (String)localObject2, l2, (Layer.LayerType)localObject3, l1, (String)localObject5, localArrayList1, (l)localObject4, i, j, k, f1, f3, m, n, (f1.j)localObject1, (f1.k)localObject6, paramJsonReader, (Layer.MatteType)localObject8, (f1.b)localObject7, bool, (g1.a)localObject9, (j)localObject12);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     j1.v
 * JD-Core Version:    0.7.0.1
 */