package j1;

import com.airbnb.lottie.h;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.parser.moshi.JsonReader.a;
import f1.m;
import g1.b;
import java.io.IOException;

class f
{
  private static final JsonReader.a a = JsonReader.a.a(new String[] { "nm", "p", "s", "hd", "d" });
  
  static b a(JsonReader paramJsonReader, h paramh, int paramInt)
    throws IOException
  {
    boolean bool1;
    if (paramInt == 3) {
      bool1 = true;
    } else {
      bool1 = false;
    }
    boolean bool2 = false;
    String str = null;
    Object localObject1 = str;
    Object localObject2 = localObject1;
    while (paramJsonReader.q())
    {
      paramInt = paramJsonReader.a0(a);
      if (paramInt != 0)
      {
        if (paramInt != 1)
        {
          if (paramInt != 2)
          {
            if (paramInt != 3)
            {
              if (paramInt != 4)
              {
                paramJsonReader.c0();
                paramJsonReader.d0();
              }
              else if (paramJsonReader.z() == 3)
              {
                bool1 = true;
              }
              else
              {
                bool1 = false;
              }
            }
            else {
              bool2 = paramJsonReader.s();
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
    return new b(str, (m)localObject1, (f1.f)localObject2, bool1, bool2);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     j1.f
 * JD-Core Version:    0.7.0.1
 */