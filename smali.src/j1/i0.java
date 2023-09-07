package j1;

import android.graphics.Path.FillType;
import com.airbnb.lottie.h;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.parser.moshi.JsonReader.a;
import g1.j;
import java.io.IOException;
import java.util.Collections;

class i0
{
  private static final JsonReader.a a = JsonReader.a.a(new String[] { "nm", "c", "o", "fillEnabled", "r", "hd" });
  
  static j a(JsonReader paramJsonReader, h paramh)
    throws IOException
  {
    f1.d locald = null;
    boolean bool1 = false;
    boolean bool2 = bool1;
    int i = 1;
    String str = null;
    Object localObject = str;
    while (paramJsonReader.q())
    {
      int j = paramJsonReader.a0(a);
      if (j != 0)
      {
        if (j != 1)
        {
          if (j != 2)
          {
            if (j != 3)
            {
              if (j != 4)
              {
                if (j != 5)
                {
                  paramJsonReader.c0();
                  paramJsonReader.d0();
                }
                else
                {
                  bool2 = paramJsonReader.s();
                }
              }
              else {
                i = paramJsonReader.z();
              }
            }
            else {
              bool1 = paramJsonReader.s();
            }
          }
          else {
            locald = d.h(paramJsonReader, paramh);
          }
        }
        else {
          localObject = d.c(paramJsonReader, paramh);
        }
      }
      else {
        str = paramJsonReader.H();
      }
    }
    if (locald == null) {
      paramJsonReader = new f1.d(Collections.singletonList(new l1.a(Integer.valueOf(100))));
    } else {
      paramJsonReader = locald;
    }
    if (i == 1) {
      paramh = Path.FillType.WINDING;
    } else {
      paramh = Path.FillType.EVEN_ODD;
    }
    return new j(str, bool1, paramh, (f1.a)localObject, paramJsonReader, bool2);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     j1.i0
 * JD-Core Version:    0.7.0.1
 */