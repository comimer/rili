package j1;

import com.airbnb.lottie.parser.moshi.JsonReader;
import f1.b;
import f1.c;
import f1.f;
import f1.j;
import java.io.IOException;
import java.util.List;

public class d
{
  private static <T> List<l1.a<T>> a(JsonReader paramJsonReader, float paramFloat, com.airbnb.lottie.h paramh, n0<T> paramn0)
    throws IOException
  {
    return u.a(paramJsonReader, paramh, paramFloat, paramn0, false);
  }
  
  private static <T> List<l1.a<T>> b(JsonReader paramJsonReader, com.airbnb.lottie.h paramh, n0<T> paramn0)
    throws IOException
  {
    return u.a(paramJsonReader, paramh, 1.0F, paramn0, false);
  }
  
  static f1.a c(JsonReader paramJsonReader, com.airbnb.lottie.h paramh)
    throws IOException
  {
    return new f1.a(b(paramJsonReader, paramh, g.a));
  }
  
  static j d(JsonReader paramJsonReader, com.airbnb.lottie.h paramh)
    throws IOException
  {
    return new j(b(paramJsonReader, paramh, i.a));
  }
  
  public static b e(JsonReader paramJsonReader, com.airbnb.lottie.h paramh)
    throws IOException
  {
    return f(paramJsonReader, paramh, true);
  }
  
  public static b f(JsonReader paramJsonReader, com.airbnb.lottie.h paramh, boolean paramBoolean)
    throws IOException
  {
    float f;
    if (paramBoolean) {
      f = k1.h.e();
    } else {
      f = 1.0F;
    }
    return new b(a(paramJsonReader, f, paramh, l.a));
  }
  
  static c g(JsonReader paramJsonReader, com.airbnb.lottie.h paramh, int paramInt)
    throws IOException
  {
    return new c(b(paramJsonReader, paramh, new o(paramInt)));
  }
  
  static f1.d h(JsonReader paramJsonReader, com.airbnb.lottie.h paramh)
    throws IOException
  {
    return new f1.d(b(paramJsonReader, paramh, r.a));
  }
  
  static f i(JsonReader paramJsonReader, com.airbnb.lottie.h paramh)
    throws IOException
  {
    return new f(u.a(paramJsonReader, paramh, k1.h.e(), b0.a, true));
  }
  
  static f1.g j(JsonReader paramJsonReader, com.airbnb.lottie.h paramh)
    throws IOException
  {
    return new f1.g(b(paramJsonReader, paramh, g0.a));
  }
  
  static f1.h k(JsonReader paramJsonReader, com.airbnb.lottie.h paramh)
    throws IOException
  {
    return new f1.h(a(paramJsonReader, k1.h.e(), paramh, h0.a));
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     j1.d
 * JD-Core Version:    0.7.0.1
 */