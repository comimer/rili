package j1;

import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.parser.moshi.JsonReader.Token;
import java.io.IOException;
import l1.d;

public class g0
  implements n0<d>
{
  public static final g0 a = new g0();
  
  public d b(JsonReader paramJsonReader, float paramFloat)
    throws IOException
  {
    int i;
    if (paramJsonReader.W() == JsonReader.Token.BEGIN_ARRAY) {
      i = 1;
    } else {
      i = 0;
    }
    if (i != 0) {
      paramJsonReader.d();
    }
    float f1 = (float)paramJsonReader.x();
    float f2 = (float)paramJsonReader.x();
    while (paramJsonReader.q()) {
      paramJsonReader.d0();
    }
    if (i != 0) {
      paramJsonReader.j();
    }
    return new d(f1 / 100.0F * paramFloat, f2 / 100.0F * paramFloat);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     j1.g0
 * JD-Core Version:    0.7.0.1
 */