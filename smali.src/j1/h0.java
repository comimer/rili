package j1;

import android.graphics.PointF;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.parser.moshi.JsonReader.Token;
import com.airbnb.lottie.parser.moshi.JsonReader.a;
import e1.a;
import g1.i;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import k1.g;

public class h0
  implements n0<i>
{
  public static final h0 a = new h0();
  private static final JsonReader.a b = JsonReader.a.a(new String[] { "c", "v", "i", "o" });
  
  public i b(JsonReader paramJsonReader, float paramFloat)
    throws IOException
  {
    if (paramJsonReader.W() == JsonReader.Token.BEGIN_ARRAY) {
      paramJsonReader.d();
    }
    paramJsonReader.e();
    Object localObject1 = null;
    Object localObject2 = null;
    Object localObject3 = localObject2;
    boolean bool = false;
    int i;
    while (paramJsonReader.q())
    {
      i = paramJsonReader.a0(b);
      if (i != 0)
      {
        if (i != 1)
        {
          if (i != 2)
          {
            if (i != 3)
            {
              paramJsonReader.c0();
              paramJsonReader.d0();
            }
            else
            {
              localObject3 = s.f(paramJsonReader, paramFloat);
            }
          }
          else {
            localObject2 = s.f(paramJsonReader, paramFloat);
          }
        }
        else {
          localObject1 = s.f(paramJsonReader, paramFloat);
        }
      }
      else {
        bool = paramJsonReader.s();
      }
    }
    paramJsonReader.m();
    if (paramJsonReader.W() == JsonReader.Token.END_ARRAY) {
      paramJsonReader.j();
    }
    if ((localObject1 != null) && (localObject2 != null) && (localObject3 != null))
    {
      if (((List)localObject1).isEmpty()) {
        return new i(new PointF(), false, Collections.emptyList());
      }
      int j = ((List)localObject1).size();
      paramJsonReader = (PointF)((List)localObject1).get(0);
      ArrayList localArrayList = new ArrayList(j);
      PointF localPointF3;
      for (i = 1; i < j; i++)
      {
        PointF localPointF1 = (PointF)((List)localObject1).get(i);
        int k = i - 1;
        PointF localPointF2 = (PointF)((List)localObject1).get(k);
        localPointF3 = (PointF)((List)localObject3).get(k);
        PointF localPointF4 = (PointF)((List)localObject2).get(i);
        localArrayList.add(new a(g.a(localPointF2, localPointF3), g.a(localPointF1, localPointF4), localPointF1));
      }
      if (bool)
      {
        localPointF3 = (PointF)((List)localObject1).get(0);
        i = j - 1;
        localObject1 = (PointF)((List)localObject1).get(i);
        localObject3 = (PointF)((List)localObject3).get(i);
        localObject2 = (PointF)((List)localObject2).get(0);
        localArrayList.add(new a(g.a((PointF)localObject1, (PointF)localObject3), g.a(localPointF3, (PointF)localObject2), localPointF3));
      }
      return new i(paramJsonReader, bool, localArrayList);
    }
    throw new IllegalArgumentException("Shape data was missing information.");
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     j1.h0
 * JD-Core Version:    0.7.0.1
 */