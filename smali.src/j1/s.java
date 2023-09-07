package j1;

import android.graphics.Color;
import android.graphics.PointF;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.parser.moshi.JsonReader.Token;
import com.airbnb.lottie.parser.moshi.JsonReader.a;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

class s
{
  private static final JsonReader.a a = JsonReader.a.a(new String[] { "x", "y" });
  
  private static PointF a(JsonReader paramJsonReader, float paramFloat)
    throws IOException
  {
    paramJsonReader.d();
    float f1 = (float)paramJsonReader.x();
    float f2 = (float)paramJsonReader.x();
    while (paramJsonReader.W() != JsonReader.Token.END_ARRAY) {
      paramJsonReader.d0();
    }
    paramJsonReader.j();
    return new PointF(f1 * paramFloat, f2 * paramFloat);
  }
  
  private static PointF b(JsonReader paramJsonReader, float paramFloat)
    throws IOException
  {
    float f1 = (float)paramJsonReader.x();
    float f2 = (float)paramJsonReader.x();
    while (paramJsonReader.q()) {
      paramJsonReader.d0();
    }
    return new PointF(f1 * paramFloat, f2 * paramFloat);
  }
  
  private static PointF c(JsonReader paramJsonReader, float paramFloat)
    throws IOException
  {
    paramJsonReader.e();
    float f1 = 0.0F;
    float f2 = 0.0F;
    while (paramJsonReader.q())
    {
      int i = paramJsonReader.a0(a);
      if (i != 0)
      {
        if (i != 1)
        {
          paramJsonReader.c0();
          paramJsonReader.d0();
        }
        else
        {
          f2 = g(paramJsonReader);
        }
      }
      else {
        f1 = g(paramJsonReader);
      }
    }
    paramJsonReader.m();
    return new PointF(f1 * paramFloat, f2 * paramFloat);
  }
  
  static int d(JsonReader paramJsonReader)
    throws IOException
  {
    paramJsonReader.d();
    int i = (int)(paramJsonReader.x() * 255.0D);
    int j = (int)(paramJsonReader.x() * 255.0D);
    int k = (int)(paramJsonReader.x() * 255.0D);
    while (paramJsonReader.q()) {
      paramJsonReader.d0();
    }
    paramJsonReader.j();
    return Color.argb(255, i, j, k);
  }
  
  static PointF e(JsonReader paramJsonReader, float paramFloat)
    throws IOException
  {
    int i = a.a[paramJsonReader.W().ordinal()];
    if (i != 1)
    {
      if (i != 2)
      {
        if (i == 3) {
          return c(paramJsonReader, paramFloat);
        }
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Unknown point starts with ");
        localStringBuilder.append(paramJsonReader.W());
        throw new IllegalArgumentException(localStringBuilder.toString());
      }
      return a(paramJsonReader, paramFloat);
    }
    return b(paramJsonReader, paramFloat);
  }
  
  static List<PointF> f(JsonReader paramJsonReader, float paramFloat)
    throws IOException
  {
    ArrayList localArrayList = new ArrayList();
    paramJsonReader.d();
    while (paramJsonReader.W() == JsonReader.Token.BEGIN_ARRAY)
    {
      paramJsonReader.d();
      localArrayList.add(e(paramJsonReader, paramFloat));
      paramJsonReader.j();
    }
    paramJsonReader.j();
    return localArrayList;
  }
  
  static float g(JsonReader paramJsonReader)
    throws IOException
  {
    JsonReader.Token localToken = paramJsonReader.W();
    int i = a.a[localToken.ordinal()];
    if (i != 1)
    {
      if (i == 2)
      {
        paramJsonReader.d();
        float f = (float)paramJsonReader.x();
        while (paramJsonReader.q()) {
          paramJsonReader.d0();
        }
        paramJsonReader.j();
        return f;
      }
      paramJsonReader = new StringBuilder();
      paramJsonReader.append("Unknown value for token of type ");
      paramJsonReader.append(localToken);
      throw new IllegalArgumentException(paramJsonReader.toString());
    }
    return (float)paramJsonReader.x();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     j1.s
 * JD-Core Version:    0.7.0.1
 */