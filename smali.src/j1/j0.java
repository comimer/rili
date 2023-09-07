package j1;

import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.parser.moshi.JsonReader.a;
import g1.c;
import g1.k;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

class j0
{
  private static final JsonReader.a a = JsonReader.a.a(new String[] { "nm", "hd", "it" });
  
  static k a(JsonReader paramJsonReader, com.airbnb.lottie.h paramh)
    throws IOException
  {
    ArrayList localArrayList = new ArrayList();
    String str = null;
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
            paramJsonReader.d0();
          }
          else
          {
            paramJsonReader.d();
            while (paramJsonReader.q())
            {
              c localc = h.a(paramJsonReader, paramh);
              if (localc != null) {
                localArrayList.add(localc);
              }
            }
            paramJsonReader.j();
          }
        }
        else {
          bool = paramJsonReader.s();
        }
      }
      else {
        str = paramJsonReader.H();
      }
    }
    return new k(str, localArrayList, bool);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     j1.j0
 * JD-Core Version:    0.7.0.1
 */