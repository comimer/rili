package j1;

import com.airbnb.lottie.h;
import com.airbnb.lottie.model.content.ShapeStroke;
import com.airbnb.lottie.model.content.ShapeStroke.LineCapType;
import com.airbnb.lottie.model.content.ShapeStroke.LineJoinType;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.parser.moshi.JsonReader.a;
import f1.b;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

class l0
{
  private static final JsonReader.a a = JsonReader.a.a(new String[] { "nm", "c", "w", "o", "lc", "lj", "ml", "hd", "d" });
  private static final JsonReader.a b = JsonReader.a.a(new String[] { "n", "v" });
  
  static ShapeStroke a(JsonReader paramJsonReader, h paramh)
    throws IOException
  {
    ArrayList localArrayList = new ArrayList();
    boolean bool = false;
    float f = 0.0F;
    String str1 = null;
    Object localObject1 = null;
    f1.a locala = null;
    b localb = null;
    ShapeStroke.LineCapType localLineCapType = null;
    ShapeStroke.LineJoinType localLineJoinType = null;
    f1.d locald = null;
    while (paramJsonReader.q()) {
      switch (paramJsonReader.a0(a))
      {
      default: 
        paramJsonReader.d0();
        break;
      case 8: 
        paramJsonReader.d();
        Object localObject2 = localObject1;
        while (paramJsonReader.q())
        {
          paramJsonReader.e();
          String str2 = null;
          localObject1 = null;
          while (paramJsonReader.q())
          {
            i = paramJsonReader.a0(b);
            if (i != 0)
            {
              if (i != 1)
              {
                paramJsonReader.c0();
                paramJsonReader.d0();
              }
              else
              {
                localObject1 = d.e(paramJsonReader, paramh);
              }
            }
            else {
              str2 = paramJsonReader.H();
            }
          }
          paramJsonReader.m();
          str2.hashCode();
          switch (str2.hashCode())
          {
          }
          do
          {
            do
            {
              do
              {
                i = -1;
                break;
              } while (!str2.equals("o"));
              i = 2;
              break;
            } while (!str2.equals("g"));
            i = 1;
            break;
          } while (!str2.equals("d"));
          int i = 0;
          switch (i)
          {
          default: 
            break;
          case 2: 
            localObject2 = localObject1;
            break;
          case 0: 
          case 1: 
            paramh.u(true);
            localArrayList.add(localObject1);
          }
        }
        paramJsonReader.j();
        localObject1 = localObject2;
        if (localArrayList.size() == 1)
        {
          localArrayList.add((b)localArrayList.get(0));
          localObject1 = localObject2;
        }
        break;
      case 7: 
        bool = paramJsonReader.s();
        break;
      case 6: 
        f = (float)paramJsonReader.x();
        break;
      case 5: 
        localLineJoinType = ShapeStroke.LineJoinType.values()[(paramJsonReader.z() - 1)];
        break;
      case 4: 
        localLineCapType = ShapeStroke.LineCapType.values()[(paramJsonReader.z() - 1)];
        break;
      case 3: 
        locald = d.h(paramJsonReader, paramh);
        break;
      case 2: 
        localb = d.e(paramJsonReader, paramh);
        break;
      case 1: 
        locala = d.c(paramJsonReader, paramh);
        break;
      case 0: 
        str1 = paramJsonReader.H();
      }
    }
    paramJsonReader = locald;
    if (locald == null) {
      paramJsonReader = new f1.d(Collections.singletonList(new l1.a(Integer.valueOf(100))));
    }
    return new ShapeStroke(str1, (b)localObject1, localArrayList, locala, paramJsonReader, localb, localLineCapType, localLineJoinType, f, bool);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     j1.l0
 * JD-Core Version:    0.7.0.1
 */