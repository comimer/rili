package j1;

import com.airbnb.lottie.h;
import com.airbnb.lottie.model.content.PolystarShape;
import com.airbnb.lottie.model.content.PolystarShape.Type;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.parser.moshi.JsonReader.a;
import f1.b;
import f1.m;
import java.io.IOException;

class c0
{
  private static final JsonReader.a a = JsonReader.a.a(new String[] { "nm", "sy", "pt", "p", "r", "or", "os", "ir", "is", "hd", "d" });
  
  static PolystarShape a(JsonReader paramJsonReader, h paramh, int paramInt)
    throws IOException
  {
    boolean bool1;
    if (paramInt == 3) {
      bool1 = true;
    } else {
      bool1 = false;
    }
    boolean bool2 = false;
    String str = null;
    Object localObject1 = str;
    Object localObject2 = localObject1;
    Object localObject3 = localObject2;
    Object localObject4 = localObject3;
    Object localObject5 = localObject4;
    Object localObject6 = localObject5;
    Object localObject7 = localObject6;
    Object localObject8 = localObject7;
    while (paramJsonReader.q()) {
      switch (paramJsonReader.a0(a))
      {
      default: 
        paramJsonReader.c0();
        paramJsonReader.d0();
        break;
      case 10: 
        if (paramJsonReader.z() == 3) {
          bool1 = true;
        } else {
          bool1 = false;
        }
        break;
      case 9: 
        bool2 = paramJsonReader.s();
        break;
      case 8: 
        localObject7 = d.f(paramJsonReader, paramh, false);
        break;
      case 7: 
        localObject5 = d.e(paramJsonReader, paramh);
        break;
      case 6: 
        localObject8 = d.f(paramJsonReader, paramh, false);
        break;
      case 5: 
        localObject6 = d.e(paramJsonReader, paramh);
        break;
      case 4: 
        localObject4 = d.f(paramJsonReader, paramh, false);
        break;
      case 3: 
        localObject3 = a.b(paramJsonReader, paramh);
        break;
      case 2: 
        localObject2 = d.f(paramJsonReader, paramh, false);
        break;
      case 1: 
        localObject1 = PolystarShape.Type.forValue(paramJsonReader.z());
        break;
      case 0: 
        str = paramJsonReader.H();
      }
    }
    return new PolystarShape(str, (PolystarShape.Type)localObject1, (b)localObject2, (m)localObject3, (b)localObject4, (b)localObject5, (b)localObject6, (b)localObject7, (b)localObject8, bool2, bool1);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     j1.c0
 * JD-Core Version:    0.7.0.1
 */