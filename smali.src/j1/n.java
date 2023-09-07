package j1;

import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.parser.moshi.JsonReader.a;
import e1.b;
import java.io.IOException;

class n
{
  private static final JsonReader.a a = JsonReader.a.a(new String[] { "fFamily", "fName", "fStyle", "ascent" });
  
  static b a(JsonReader paramJsonReader)
    throws IOException
  {
    paramJsonReader.e();
    String str1 = null;
    String str2 = null;
    float f = 0.0F;
    String str3 = str2;
    while (paramJsonReader.q())
    {
      int i = paramJsonReader.a0(a);
      if (i != 0)
      {
        if (i != 1)
        {
          if (i != 2)
          {
            if (i != 3)
            {
              paramJsonReader.c0();
              paramJsonReader.d0();
            }
            else
            {
              f = (float)paramJsonReader.x();
            }
          }
          else {
            str2 = paramJsonReader.H();
          }
        }
        else {
          str3 = paramJsonReader.H();
        }
      }
      else {
        str1 = paramJsonReader.H();
      }
    }
    paramJsonReader.m();
    return new b(str1, str3, str2, f);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     j1.n
 * JD-Core Version:    0.7.0.1
 */