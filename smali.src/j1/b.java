package j1;

import com.airbnb.lottie.h;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.parser.moshi.JsonReader.a;
import f1.a;
import f1.k;
import java.io.IOException;

public class b
{
  private static final JsonReader.a a = JsonReader.a.a(new String[] { "a" });
  private static final JsonReader.a b = JsonReader.a.a(new String[] { "fc", "sc", "sw", "t" });
  
  public static k a(JsonReader paramJsonReader, h paramh)
    throws IOException
  {
    paramJsonReader.e();
    k localk = null;
    while (paramJsonReader.q()) {
      if (paramJsonReader.a0(a) != 0)
      {
        paramJsonReader.c0();
        paramJsonReader.d0();
      }
      else
      {
        localk = b(paramJsonReader, paramh);
      }
    }
    paramJsonReader.m();
    if (localk == null) {
      return new k(null, null, null, null);
    }
    return localk;
  }
  
  private static k b(JsonReader paramJsonReader, h paramh)
    throws IOException
  {
    paramJsonReader.e();
    a locala1 = null;
    a locala2 = null;
    Object localObject1 = locala2;
    Object localObject2 = localObject1;
    while (paramJsonReader.q())
    {
      int i = paramJsonReader.a0(b);
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
              localObject2 = d.e(paramJsonReader, paramh);
            }
          }
          else {
            localObject1 = d.e(paramJsonReader, paramh);
          }
        }
        else {
          locala2 = d.c(paramJsonReader, paramh);
        }
      }
      else {
        locala1 = d.c(paramJsonReader, paramh);
      }
    }
    paramJsonReader.m();
    return new k(locala1, locala2, (f1.b)localObject1, (f1.b)localObject2);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     j1.b
 * JD-Core Version:    0.7.0.1
 */