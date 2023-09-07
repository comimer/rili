package j1;

import com.airbnb.lottie.h;
import com.airbnb.lottie.model.content.GradientType;
import com.airbnb.lottie.model.content.ShapeStroke.LineCapType;
import com.airbnb.lottie.model.content.ShapeStroke.LineJoinType;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.parser.moshi.JsonReader.a;
import f1.b;
import f1.f;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

class q
{
  private static final JsonReader.a a = JsonReader.a.a(new String[] { "nm", "g", "o", "t", "s", "e", "w", "lc", "lj", "ml", "hd", "d" });
  private static final JsonReader.a b = JsonReader.a.a(new String[] { "p", "k" });
  private static final JsonReader.a c = JsonReader.a.a(new String[] { "n", "v" });
  
  static com.airbnb.lottie.model.content.a a(JsonReader paramJsonReader, h paramh)
    throws IOException
  {
    ArrayList localArrayList = new ArrayList();
    float f = 0.0F;
    String str1 = null;
    Object localObject1 = null;
    Object localObject2 = null;
    f localf1 = null;
    f localf2 = null;
    b localb = null;
    ShapeStroke.LineCapType localLineCapType = null;
    ShapeStroke.LineJoinType localLineJoinType = null;
    Object localObject3 = null;
    boolean bool = false;
    f1.d locald = null;
    while (paramJsonReader.q())
    {
      Object localObject4;
      int i;
      switch (paramJsonReader.a0(a))
      {
      default: 
        paramJsonReader.c0();
        paramJsonReader.d0();
        break;
      case 11: 
        paramJsonReader.d();
        while (paramJsonReader.q())
        {
          paramJsonReader.e();
          String str2 = null;
          localObject4 = null;
          while (paramJsonReader.q())
          {
            i = paramJsonReader.a0(c);
            if (i != 0)
            {
              if (i != 1)
              {
                paramJsonReader.c0();
                paramJsonReader.d0();
              }
              else
              {
                localObject4 = d.e(paramJsonReader, paramh);
              }
            }
            else {
              str2 = paramJsonReader.H();
            }
          }
          paramJsonReader.m();
          if (str2.equals("o"))
          {
            localObject3 = localObject4;
          }
          else
          {
            if ((!str2.equals("d")) && (!str2.equals("g"))) {
              break label270;
            }
            paramh.u(true);
            localArrayList.add(localObject4);
          }
        }
        paramJsonReader.j();
        if (localArrayList.size() == 1) {
          localArrayList.add((b)localArrayList.get(0));
        }
        break;
      case 10: 
        bool = paramJsonReader.s();
        break;
      case 9: 
        f = (float)paramJsonReader.x();
        break;
      case 8: 
        localLineJoinType = ShapeStroke.LineJoinType.values()[(paramJsonReader.z() - 1)];
        break;
      case 7: 
        localLineCapType = ShapeStroke.LineCapType.values()[(paramJsonReader.z() - 1)];
        break;
      case 6: 
        localb = d.e(paramJsonReader, paramh);
        break;
      case 5: 
        localf2 = d.i(paramJsonReader, paramh);
        break;
      case 4: 
        localf1 = d.i(paramJsonReader, paramh);
        break;
      case 3: 
        if (paramJsonReader.z() == 1) {
          localObject4 = GradientType.LINEAR;
        } else {
          localObject4 = GradientType.RADIAL;
        }
        localObject1 = localObject4;
        break;
      case 2: 
        locald = d.h(paramJsonReader, paramh);
        break;
      case 1: 
        i = -1;
        paramJsonReader.e();
        localObject4 = localObject2;
        while (paramJsonReader.q())
        {
          int j = paramJsonReader.a0(b);
          if (j != 0)
          {
            if (j != 1)
            {
              paramJsonReader.c0();
              paramJsonReader.d0();
            }
            else
            {
              localObject4 = d.g(paramJsonReader, paramh, i);
            }
          }
          else {
            i = paramJsonReader.z();
          }
        }
        paramJsonReader.m();
        localObject2 = localObject4;
        break;
      case 0: 
        label270:
        str1 = paramJsonReader.H();
      }
    }
    paramJsonReader = locald;
    if (locald == null) {
      paramJsonReader = new f1.d(Collections.singletonList(new l1.a(Integer.valueOf(100))));
    }
    return new com.airbnb.lottie.model.content.a(str1, localObject1, localObject2, paramJsonReader, localf1, localf2, localb, localLineCapType, localLineJoinType, f, localArrayList, localObject3, bool);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     j1.q
 * JD-Core Version:    0.7.0.1
 */