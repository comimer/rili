package j1;

import com.airbnb.lottie.h;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.parser.moshi.JsonReader.a;
import g1.a;
import java.io.IOException;

class e
{
  private static final JsonReader.a a = JsonReader.a.a(new String[] { "ef" });
  private static final JsonReader.a b = JsonReader.a.a(new String[] { "ty", "v" });
  
  private static a a(JsonReader paramJsonReader, h paramh)
    throws IOException
  {
    paramJsonReader.e();
    Object localObject1 = null;
    int i = 0;
    Object localObject2 = localObject1;
    for (;;)
    {
      if (!paramJsonReader.q()) {
        break label92;
      }
      int j = paramJsonReader.a0(b);
      if (j != 0)
      {
        if (j != 1)
        {
          paramJsonReader.c0();
          paramJsonReader.d0();
        }
        else if (i != 0)
        {
          localObject2 = new a(d.e(paramJsonReader, paramh));
        }
        else
        {
          paramJsonReader.d0();
        }
      }
      else
      {
        localObject1 = localObject2;
        if (paramJsonReader.z() != 0) {
          break;
        }
        i = 1;
      }
    }
    label92:
    paramJsonReader.m();
    return localObject2;
  }
  
  static a b(JsonReader paramJsonReader, h paramh)
    throws IOException
  {
    Object localObject = null;
    while (paramJsonReader.q()) {
      if (paramJsonReader.a0(a) != 0)
      {
        paramJsonReader.c0();
        paramJsonReader.d0();
      }
      else
      {
        paramJsonReader.d();
        while (paramJsonReader.q())
        {
          a locala = a(paramJsonReader, paramh);
          if (locala != null) {
            localObject = locala;
          }
        }
        paramJsonReader.j();
      }
    }
    return localObject;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     j1.e
 * JD-Core Version:    0.7.0.1
 */