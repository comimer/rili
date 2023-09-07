package j1;

import android.graphics.PointF;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.parser.moshi.JsonReader.Token;
import com.airbnb.lottie.parser.moshi.JsonReader.a;
import f1.b;
import f1.e;
import f1.i;
import f1.m;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class a
{
  private static final JsonReader.a a = JsonReader.a.a(new String[] { "k", "x", "y" });
  
  public static e a(JsonReader paramJsonReader, com.airbnb.lottie.h paramh)
    throws IOException
  {
    ArrayList localArrayList = new ArrayList();
    if (paramJsonReader.W() == JsonReader.Token.BEGIN_ARRAY)
    {
      paramJsonReader.d();
      while (paramJsonReader.q()) {
        localArrayList.add(z.a(paramJsonReader, paramh));
      }
      paramJsonReader.j();
      u.b(localArrayList);
    }
    else
    {
      localArrayList.add(new l1.a(s.e(paramJsonReader, k1.h.e())));
    }
    return new e(localArrayList);
  }
  
  static m<PointF, PointF> b(JsonReader paramJsonReader, com.airbnb.lottie.h paramh)
    throws IOException
  {
    paramJsonReader.e();
    e locale = null;
    b localb1 = null;
    int i = 0;
    b localb2 = localb1;
    while (paramJsonReader.W() != JsonReader.Token.END_OBJECT)
    {
      int j = paramJsonReader.a0(a);
      if (j != 0)
      {
        if (j != 1)
        {
          if (j != 2)
          {
            paramJsonReader.c0();
            paramJsonReader.d0();
            continue;
          }
          if (paramJsonReader.W() == JsonReader.Token.STRING) {
            paramJsonReader.d0();
          } else {
            localb1 = d.e(paramJsonReader, paramh);
          }
        }
        else
        {
          if (paramJsonReader.W() != JsonReader.Token.STRING) {
            break label107;
          }
          paramJsonReader.d0();
        }
        i = 1;
        continue;
        label107:
        localb2 = d.e(paramJsonReader, paramh);
      }
      else
      {
        locale = a(paramJsonReader, paramh);
      }
    }
    paramJsonReader.m();
    if (i != 0) {
      paramh.a("Lottie doesn't support expressions.");
    }
    if (locale != null) {
      return locale;
    }
    return new i(localb2, localb1);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     j1.a
 * JD-Core Version:    0.7.0.1
 */