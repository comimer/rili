package j1;

import android.graphics.Color;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.parser.moshi.JsonReader.Token;
import java.io.IOException;

public class g
  implements n0<Integer>
{
  public static final g a = new g();
  
  public Integer b(JsonReader paramJsonReader, float paramFloat)
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
    double d1 = paramJsonReader.x();
    double d2 = paramJsonReader.x();
    double d3 = paramJsonReader.x();
    double d4;
    if (paramJsonReader.W() == JsonReader.Token.NUMBER) {
      d4 = paramJsonReader.x();
    } else {
      d4 = 1.0D;
    }
    if (i != 0) {
      paramJsonReader.j();
    }
    double d5 = d1;
    double d6 = d2;
    double d7 = d3;
    double d8 = d4;
    if (d1 <= 1.0D)
    {
      d5 = d1;
      d6 = d2;
      d7 = d3;
      d8 = d4;
      if (d2 <= 1.0D)
      {
        d5 = d1;
        d6 = d2;
        d7 = d3;
        d8 = d4;
        if (d3 <= 1.0D)
        {
          d1 *= 255.0D;
          d2 *= 255.0D;
          d3 *= 255.0D;
          d5 = d1;
          d6 = d2;
          d7 = d3;
          d8 = d4;
          if (d4 <= 1.0D)
          {
            d8 = d4 * 255.0D;
            d7 = d3;
            d6 = d2;
            d5 = d1;
          }
        }
      }
    }
    return Integer.valueOf(Color.argb((int)d8, (int)d5, (int)d6, (int)d7));
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     j1.g
 * JD-Core Version:    0.7.0.1
 */