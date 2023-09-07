package j1;

import android.graphics.Path.FillType;
import com.airbnb.lottie.h;
import com.airbnb.lottie.model.content.GradientType;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.parser.moshi.JsonReader.a;
import f1.c;
import f1.f;
import g1.e;
import java.io.IOException;
import java.util.Collections;
import l1.a;

class p
{
  private static final JsonReader.a a = JsonReader.a.a(new String[] { "nm", "g", "o", "t", "s", "e", "r", "hd" });
  private static final JsonReader.a b = JsonReader.a.a(new String[] { "p", "k" });
  
  static e a(JsonReader paramJsonReader, h paramh)
    throws IOException
  {
    Object localObject1 = Path.FillType.WINDING;
    Object localObject2 = null;
    String str = null;
    Object localObject3 = str;
    Object localObject4 = localObject3;
    Object localObject5 = localObject4;
    Object localObject6 = localObject5;
    boolean bool = false;
    Object localObject7 = localObject4;
    Object localObject8 = localObject3;
    localObject3 = localObject2;
    while (paramJsonReader.q()) {
      switch (paramJsonReader.a0(a))
      {
      default: 
        paramJsonReader.c0();
        paramJsonReader.d0();
        break;
      case 7: 
        bool = paramJsonReader.s();
        break;
      case 6: 
        if (paramJsonReader.z() == 1) {
          localObject4 = Path.FillType.WINDING;
        } else {
          localObject4 = Path.FillType.EVEN_ODD;
        }
        localObject1 = localObject4;
        break;
      case 5: 
        localObject6 = d.i(paramJsonReader, paramh);
        break;
      case 4: 
        localObject5 = d.i(paramJsonReader, paramh);
        break;
      case 3: 
        if (paramJsonReader.z() == 1) {
          localObject4 = GradientType.LINEAR;
        } else {
          localObject4 = GradientType.RADIAL;
        }
        localObject8 = localObject4;
        break;
      case 2: 
        localObject3 = d.h(paramJsonReader, paramh);
        break;
      case 1: 
        int i = -1;
        paramJsonReader.e();
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
              localObject7 = d.g(paramJsonReader, paramh, i);
            }
          }
          else {
            i = paramJsonReader.z();
          }
        }
        paramJsonReader.m();
        break;
      case 0: 
        str = paramJsonReader.H();
      }
    }
    if (localObject3 == null) {
      localObject3 = new f1.d(Collections.singletonList(new a(Integer.valueOf(100))));
    }
    return new e(str, localObject8, (Path.FillType)localObject1, (c)localObject7, (f1.d)localObject3, (f)localObject5, (f)localObject6, null, null, bool);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     j1.p
 * JD-Core Version:    0.7.0.1
 */