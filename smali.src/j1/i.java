package j1;

import com.airbnb.lottie.model.DocumentData;
import com.airbnb.lottie.model.DocumentData.Justification;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.parser.moshi.JsonReader.a;
import java.io.IOException;

public class i
  implements n0<DocumentData>
{
  public static final i a = new i();
  private static final JsonReader.a b = JsonReader.a.a(new String[] { "t", "f", "s", "j", "tr", "lh", "ls", "fc", "sc", "sw", "of" });
  
  public DocumentData b(JsonReader paramJsonReader, float paramFloat)
    throws IOException
  {
    Object localObject = DocumentData.Justification.CENTER;
    paramJsonReader.e();
    String str1 = null;
    String str2 = str1;
    int i = 0;
    int j = i;
    int k = j;
    float f1 = 0.0F;
    paramFloat = f1;
    float f2 = paramFloat;
    float f3 = f2;
    boolean bool = true;
    while (paramJsonReader.q()) {
      switch (paramJsonReader.a0(b))
      {
      default: 
        paramJsonReader.c0();
        paramJsonReader.d0();
        break;
      case 10: 
        bool = paramJsonReader.s();
        break;
      case 9: 
        f3 = (float)paramJsonReader.x();
        break;
      case 8: 
        k = s.d(paramJsonReader);
        break;
      case 7: 
        j = s.d(paramJsonReader);
        break;
      case 6: 
        f2 = (float)paramJsonReader.x();
        break;
      case 5: 
        paramFloat = (float)paramJsonReader.x();
        break;
      case 4: 
        i = paramJsonReader.z();
        break;
      case 3: 
        int m = paramJsonReader.z();
        DocumentData.Justification localJustification = DocumentData.Justification.CENTER;
        localObject = localJustification;
        if (m <= localJustification.ordinal()) {
          if (m < 0) {
            localObject = localJustification;
          } else {
            localObject = DocumentData.Justification.values()[m];
          }
        }
        break;
      case 2: 
        f1 = (float)paramJsonReader.x();
        break;
      case 1: 
        str2 = paramJsonReader.H();
        break;
      case 0: 
        str1 = paramJsonReader.H();
      }
    }
    paramJsonReader.m();
    return new DocumentData(str1, str2, f1, (DocumentData.Justification)localObject, i, paramFloat, f2, j, k, f3, bool);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     j1.i
 * JD-Core Version:    0.7.0.1
 */