package j1;

import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.parser.moshi.JsonReader.a;
import g1.l;
import java.io.IOException;

class k0
{
  static JsonReader.a a = JsonReader.a.a(new String[] { "nm", "ind", "ks", "hd" });
  
  static l a(JsonReader paramJsonReader, com.airbnb.lottie.h paramh)
    throws IOException
  {
    int i = 0;
    String str = null;
    Object localObject = str;
    boolean bool = false;
    while (paramJsonReader.q())
    {
      int j = paramJsonReader.a0(a);
      if (j != 0)
      {
        if (j != 1)
        {
          if (j != 2)
          {
            if (j != 3) {
              paramJsonReader.d0();
            } else {
              bool = paramJsonReader.s();
            }
          }
          else {
            localObject = d.k(paramJsonReader, paramh);
          }
        }
        else {
          i = paramJsonReader.z();
        }
      }
      else {
        str = paramJsonReader.H();
      }
    }
    return new l(str, i, (f1.h)localObject, bool);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     j1.k0
 * JD-Core Version:    0.7.0.1
 */