package j1;

import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.parser.moshi.JsonReader.a;
import e1.c;
import g1.k;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

class m
{
  private static final JsonReader.a a = JsonReader.a.a(new String[] { "ch", "size", "w", "style", "fFamily", "data" });
  private static final JsonReader.a b = JsonReader.a.a(new String[] { "shapes" });
  
  static c a(JsonReader paramJsonReader, com.airbnb.lottie.h paramh)
    throws IOException
  {
    ArrayList localArrayList = new ArrayList();
    paramJsonReader.e();
    String str1 = null;
    String str2 = str1;
    double d1 = 0.0D;
    double d2 = d1;
    int i = 0;
    int j = i;
    while (paramJsonReader.q())
    {
      i = paramJsonReader.a0(a);
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
                if (i != 5)
                {
                  paramJsonReader.c0();
                  paramJsonReader.d0();
                }
                else
                {
                  paramJsonReader.e();
                  while (paramJsonReader.q()) {
                    if (paramJsonReader.a0(b) != 0)
                    {
                      paramJsonReader.c0();
                      paramJsonReader.d0();
                    }
                    else
                    {
                      paramJsonReader.d();
                      while (paramJsonReader.q()) {
                        localArrayList.add((k)h.a(paramJsonReader, paramh));
                      }
                      paramJsonReader.j();
                    }
                  }
                  paramJsonReader.m();
                }
              }
              else {
                str2 = paramJsonReader.H();
              }
            }
            else {
              str1 = paramJsonReader.H();
            }
          }
          else {
            d2 = paramJsonReader.x();
          }
        }
        else {
          d1 = paramJsonReader.x();
        }
      }
      else
      {
        i = paramJsonReader.H().charAt(0);
        j = i;
      }
    }
    paramJsonReader.m();
    return new c(localArrayList, j, d1, d2, str1, str2);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     j1.m
 * JD-Core Version:    0.7.0.1
 */