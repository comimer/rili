package j1;

import c1.i;
import com.airbnb.lottie.h;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.parser.moshi.JsonReader.Token;
import com.airbnb.lottie.parser.moshi.JsonReader.a;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import l1.a;

class u
{
  static JsonReader.a a = JsonReader.a.a(new String[] { "k" });
  
  static <T> List<a<T>> a(JsonReader paramJsonReader, h paramh, float paramFloat, n0<T> paramn0, boolean paramBoolean)
    throws IOException
  {
    ArrayList localArrayList = new ArrayList();
    if (paramJsonReader.W() == JsonReader.Token.STRING)
    {
      paramh.a("Lottie doesn't support expressions.");
      return localArrayList;
    }
    paramJsonReader.e();
    while (paramJsonReader.q()) {
      if (paramJsonReader.a0(a) != 0)
      {
        paramJsonReader.d0();
      }
      else if (paramJsonReader.W() == JsonReader.Token.BEGIN_ARRAY)
      {
        paramJsonReader.d();
        if (paramJsonReader.W() == JsonReader.Token.NUMBER) {
          localArrayList.add(t.c(paramJsonReader, paramh, paramFloat, paramn0, false, paramBoolean));
        } else {
          while (paramJsonReader.q()) {
            localArrayList.add(t.c(paramJsonReader, paramh, paramFloat, paramn0, true, paramBoolean));
          }
        }
        paramJsonReader.j();
      }
      else
      {
        localArrayList.add(t.c(paramJsonReader, paramh, paramFloat, paramn0, false, paramBoolean));
      }
    }
    paramJsonReader.m();
    b(localArrayList);
    return localArrayList;
  }
  
  public static <T> void b(List<? extends a<T>> paramList)
  {
    int i = paramList.size();
    int j = 0;
    int k;
    for (;;)
    {
      k = i - 1;
      if (j >= k) {
        break;
      }
      locala = (a)paramList.get(j);
      k = j + 1;
      Object localObject = (a)paramList.get(k);
      locala.h = Float.valueOf(((a)localObject).g);
      j = k;
      if (locala.c == null)
      {
        localObject = ((a)localObject).b;
        j = k;
        if (localObject != null)
        {
          locala.c = localObject;
          j = k;
          if ((locala instanceof i))
          {
            ((i)locala).i();
            j = k;
          }
        }
      }
    }
    a locala = (a)paramList.get(k);
    if (((locala.b == null) || (locala.c == null)) && (paramList.size() > 1)) {
      paramList.remove(locala);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     j1.u
 * JD-Core Version:    0.7.0.1
 */