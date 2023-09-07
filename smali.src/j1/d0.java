package j1;

import com.airbnb.lottie.h;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.parser.moshi.JsonReader.a;
import f1.b;
import f1.m;
import g1.f;
import java.io.IOException;

class d0
{
  private static final JsonReader.a a = JsonReader.a.a(new String[] { "nm", "p", "s", "r", "hd" });
  
  static f a(JsonReader paramJsonReader, h paramh)
    throws IOException
  {
    String str = null;
    Object localObject1 = str;
    Object localObject2 = localObject1;
    Object localObject3 = localObject2;
    boolean bool = false;
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
              if (i != 4) {
                paramJsonReader.d0();
              } else {
                bool = paramJsonReader.s();
              }
            }
            else {
              localObject3 = d.e(paramJsonReader, paramh);
            }
          }
          else {
            localObject2 = d.i(paramJsonReader, paramh);
          }
        }
        else {
          localObject1 = a.b(paramJsonReader, paramh);
        }
      }
      else {
        str = paramJsonReader.H();
      }
    }
    return new f(str, (m)localObject1, (m)localObject2, (b)localObject3, bool);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     j1.d0
 * JD-Core Version:    0.7.0.1
 */