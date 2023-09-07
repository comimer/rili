package j1;

import android.graphics.Rect;
import com.airbnb.lottie.d0;
import com.airbnb.lottie.model.layer.Layer;
import com.airbnb.lottie.model.layer.Layer.LayerType;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.parser.moshi.JsonReader.a;
import e1.b;
import e1.c;
import e1.g;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class w
{
  private static final JsonReader.a a = JsonReader.a.a(new String[] { "w", "h", "ip", "op", "fr", "v", "layers", "assets", "fonts", "chars", "markers" });
  static JsonReader.a b = JsonReader.a.a(new String[] { "id", "layers", "w", "h", "p", "u" });
  private static final JsonReader.a c = JsonReader.a.a(new String[] { "list" });
  private static final JsonReader.a d = JsonReader.a.a(new String[] { "cm", "tm", "dr" });
  
  public static com.airbnb.lottie.h a(JsonReader paramJsonReader)
    throws IOException
  {
    float f1 = k1.h.e();
    n.d locald = new n.d();
    ArrayList localArrayList1 = new ArrayList();
    HashMap localHashMap1 = new HashMap();
    HashMap localHashMap2 = new HashMap();
    HashMap localHashMap3 = new HashMap();
    ArrayList localArrayList2 = new ArrayList();
    n.h localh = new n.h();
    com.airbnb.lottie.h localh1 = new com.airbnb.lottie.h();
    paramJsonReader.e();
    float f2 = 0.0F;
    float f3 = f2;
    float f4 = f3;
    int i = 0;
    int j = 0;
    for (;;)
    {
      Object localObject = paramJsonReader;
      if (!paramJsonReader.q()) {
        break;
      }
      switch (((JsonReader)localObject).a0(a))
      {
      default: 
        paramJsonReader.c0();
        paramJsonReader.d0();
        break;
      case 10: 
        f((JsonReader)localObject, localArrayList2);
        break;
      case 9: 
        c((JsonReader)localObject, localh1, localh);
        break;
      case 8: 
        d((JsonReader)localObject, localHashMap3);
        break;
      case 7: 
        b((JsonReader)localObject, localh1, localHashMap1, localHashMap2);
        break;
      case 6: 
        e((JsonReader)localObject, localh1, localArrayList1, locald);
        break;
      case 5: 
        localObject = paramJsonReader.H().split("\\.");
        if (!k1.h.j(Integer.parseInt(localObject[0]), Integer.parseInt(localObject[1]), Integer.parseInt(localObject[2]), 4, 4, 0)) {
          localh1.a("Lottie only supports bodymovin >= 4.4.0");
        }
        break;
      case 4: 
        f4 = (float)paramJsonReader.x();
        break;
      case 3: 
        f3 = (float)paramJsonReader.x() - 0.01F;
        break;
      case 2: 
        f2 = (float)paramJsonReader.x();
        break;
      case 1: 
        j = paramJsonReader.z();
        break;
      }
      i = paramJsonReader.z();
    }
    localh1.s(new Rect(0, 0, (int)(i * f1), (int)(j * f1)), f2, f3, f4, localArrayList1, locald, localHashMap1, localHashMap2, localh, localHashMap3, localArrayList2);
    return localh1;
  }
  
  private static void b(JsonReader paramJsonReader, com.airbnb.lottie.h paramh, Map<String, List<Layer>> paramMap, Map<String, d0> paramMap1)
    throws IOException
  {
    paramJsonReader.d();
    while (paramJsonReader.q())
    {
      ArrayList localArrayList = new ArrayList();
      n.d locald = new n.d();
      paramJsonReader.e();
      int i = 0;
      int j = i;
      String str = null;
      Object localObject1 = str;
      Object localObject2 = localObject1;
      while (paramJsonReader.q())
      {
        int k = paramJsonReader.a0(b);
        if (k != 0)
        {
          if (k != 1)
          {
            if (k != 2)
            {
              if (k != 3)
              {
                if (k != 4)
                {
                  if (k != 5)
                  {
                    paramJsonReader.c0();
                    paramJsonReader.d0();
                  }
                  else
                  {
                    localObject2 = paramJsonReader.H();
                  }
                }
                else {
                  localObject1 = paramJsonReader.H();
                }
              }
              else {
                j = paramJsonReader.z();
              }
            }
            else {
              i = paramJsonReader.z();
            }
          }
          else
          {
            paramJsonReader.d();
            while (paramJsonReader.q())
            {
              Layer localLayer = v.b(paramJsonReader, paramh);
              locald.l(localLayer.d(), localLayer);
              localArrayList.add(localLayer);
            }
            paramJsonReader.j();
          }
        }
        else {
          str = paramJsonReader.H();
        }
      }
      paramJsonReader.m();
      if (localObject1 != null)
      {
        localObject1 = new d0(i, j, str, (String)localObject1, (String)localObject2);
        paramMap1.put(((d0)localObject1).d(), localObject1);
      }
      else
      {
        paramMap.put(str, localArrayList);
      }
    }
    paramJsonReader.j();
  }
  
  private static void c(JsonReader paramJsonReader, com.airbnb.lottie.h paramh, n.h<c> paramh1)
    throws IOException
  {
    paramJsonReader.d();
    while (paramJsonReader.q())
    {
      c localc = m.a(paramJsonReader, paramh);
      paramh1.l(localc.hashCode(), localc);
    }
    paramJsonReader.j();
  }
  
  private static void d(JsonReader paramJsonReader, Map<String, b> paramMap)
    throws IOException
  {
    paramJsonReader.e();
    while (paramJsonReader.q()) {
      if (paramJsonReader.a0(c) != 0)
      {
        paramJsonReader.c0();
        paramJsonReader.d0();
      }
      else
      {
        paramJsonReader.d();
        while (paramJsonReader.q())
        {
          b localb = n.a(paramJsonReader);
          paramMap.put(localb.b(), localb);
        }
        paramJsonReader.j();
      }
    }
    paramJsonReader.m();
  }
  
  private static void e(JsonReader paramJsonReader, com.airbnb.lottie.h paramh, List<Layer> paramList, n.d<Layer> paramd)
    throws IOException
  {
    paramJsonReader.d();
    int i = 0;
    while (paramJsonReader.q())
    {
      Object localObject = v.b(paramJsonReader, paramh);
      int j = i;
      if (((Layer)localObject).f() == Layer.LayerType.IMAGE) {
        j = i + 1;
      }
      paramList.add(localObject);
      paramd.l(((Layer)localObject).d(), localObject);
      i = j;
      if (j > 4)
      {
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("You have ");
        ((StringBuilder)localObject).append(j);
        ((StringBuilder)localObject).append(" images. Lottie should primarily be used with shapes. If you are using Adobe Illustrator, convert the Illustrator layers to shape layers.");
        k1.d.c(((StringBuilder)localObject).toString());
        i = j;
      }
    }
    paramJsonReader.j();
  }
  
  private static void f(JsonReader paramJsonReader, List<g> paramList)
    throws IOException
  {
    paramJsonReader.d();
    while (paramJsonReader.q())
    {
      String str = null;
      paramJsonReader.e();
      float f1 = 0.0F;
      float f2 = 0.0F;
      while (paramJsonReader.q())
      {
        int i = paramJsonReader.a0(d);
        if (i != 0)
        {
          if (i != 1)
          {
            if (i != 2)
            {
              paramJsonReader.c0();
              paramJsonReader.d0();
            }
            else
            {
              f2 = (float)paramJsonReader.x();
            }
          }
          else {
            f1 = (float)paramJsonReader.x();
          }
        }
        else {
          str = paramJsonReader.H();
        }
      }
      paramJsonReader.m();
      paramList.add(new g(str, f1, f2));
    }
    paramJsonReader.j();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     j1.w
 * JD-Core Version:    0.7.0.1
 */