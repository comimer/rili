package j1;

import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.parser.moshi.JsonReader.a;
import f1.m;
import java.io.IOException;

public class f0
{
  private static final JsonReader.a a = JsonReader.a.a(new String[] { "nm", "r", "hd" });
  
  static g1.h a(JsonReader paramJsonReader, com.airbnb.lottie.h paramh)
    throws IOException
  {
    Object localObject1 = null;
    boolean bool = false;
    String str = null;
    Object localObject2 = str;
    while (paramJsonReader.q())
    {
      int i = paramJsonReader.a0(a);
      if (i != 0)
      {
        if (i != 1)
        {
          if (i != 2) {
            paramJsonReader.d0();
          } else {
            bool = paramJsonReader.s();
          }
        }
        else {
          localObject2 = d.f(paramJsonReader, paramh, true);
        }
      }
      else {
        str = paramJsonReader.H();
      }
    }
    if (bool) {
      paramJsonReader = localObject1;
    } else {
      paramJsonReader = new g1.h(str, (m)localObject2);
    }
    return paramJsonReader;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     j1.f0
 * JD-Core Version:    0.7.0.1
 */