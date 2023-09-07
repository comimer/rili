package j1;

import c1.i;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.parser.moshi.JsonReader.Token;
import java.io.IOException;

class z
{
  static i a(JsonReader paramJsonReader, com.airbnb.lottie.h paramh)
    throws IOException
  {
    boolean bool;
    if (paramJsonReader.W() == JsonReader.Token.BEGIN_OBJECT) {
      bool = true;
    } else {
      bool = false;
    }
    return new i(paramh, t.c(paramJsonReader, paramh, k1.h.e(), a0.a, bool, false));
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     j1.z
 * JD-Core Version:    0.7.0.1
 */