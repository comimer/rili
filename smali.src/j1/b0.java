package j1;

import android.graphics.PointF;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.parser.moshi.JsonReader.Token;
import java.io.IOException;

public class b0
  implements n0<PointF>
{
  public static final b0 a = new b0();
  
  public PointF b(JsonReader paramJsonReader, float paramFloat)
    throws IOException
  {
    Object localObject = paramJsonReader.W();
    if (localObject == JsonReader.Token.BEGIN_ARRAY) {
      return s.e(paramJsonReader, paramFloat);
    }
    if (localObject == JsonReader.Token.BEGIN_OBJECT) {
      return s.e(paramJsonReader, paramFloat);
    }
    if (localObject == JsonReader.Token.NUMBER)
    {
      localObject = new PointF((float)paramJsonReader.x() * paramFloat, (float)paramJsonReader.x() * paramFloat);
      while (paramJsonReader.q()) {
        paramJsonReader.d0();
      }
      return localObject;
    }
    paramJsonReader = new StringBuilder();
    paramJsonReader.append("Cannot convert json to point. Next token is ");
    paramJsonReader.append(localObject);
    throw new IllegalArgumentException(paramJsonReader.toString());
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     j1.b0
 * JD-Core Version:    0.7.0.1
 */