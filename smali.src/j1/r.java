package j1;

import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;

public class r
  implements n0<Integer>
{
  public static final r a = new r();
  
  public Integer b(JsonReader paramJsonReader, float paramFloat)
    throws IOException
  {
    return Integer.valueOf(Math.round(s.g(paramJsonReader) * paramFloat));
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     j1.r
 * JD-Core Version:    0.7.0.1
 */