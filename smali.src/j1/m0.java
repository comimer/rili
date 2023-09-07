package j1;

import com.airbnb.lottie.h;
import com.airbnb.lottie.model.content.ShapeTrimPath;
import com.airbnb.lottie.model.content.ShapeTrimPath.Type;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.parser.moshi.JsonReader.a;
import f1.b;
import java.io.IOException;

class m0
{
  private static final JsonReader.a a = JsonReader.a.a(new String[] { "s", "e", "o", "nm", "m", "hd" });
  
  static ShapeTrimPath a(JsonReader paramJsonReader, h paramh)
    throws IOException
  {
    boolean bool = false;
    String str = null;
    Object localObject1 = str;
    Object localObject2 = localObject1;
    Object localObject3 = localObject2;
    Object localObject4 = localObject3;
    while (paramJsonReader.q())
    {
      int i = paramJsonReader.a0(a);
      if (i != 0)
      {
        if (i != 1)
        {
          if (i != 2)
          {
            if (i != 3)
            {
              if (i != 4)
              {
                if (i != 5) {
                  paramJsonReader.d0();
                } else {
                  bool = paramJsonReader.s();
                }
              }
              else {
                localObject1 = ShapeTrimPath.Type.forId(paramJsonReader.z());
              }
            }
            else {
              str = paramJsonReader.H();
            }
          }
          else {
            localObject4 = d.f(paramJsonReader, paramh, false);
          }
        }
        else {
          localObject3 = d.f(paramJsonReader, paramh, false);
        }
      }
      else {
        localObject2 = d.f(paramJsonReader, paramh, false);
      }
    }
    return new ShapeTrimPath(str, (ShapeTrimPath.Type)localObject1, (b)localObject2, (b)localObject3, (b)localObject4, bool);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     j1.m0
 * JD-Core Version:    0.7.0.1
 */