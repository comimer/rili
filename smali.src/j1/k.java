package j1;

import com.airbnb.lottie.h;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.parser.moshi.JsonReader.a;
import f1.a;
import f1.b;
import java.io.IOException;

public class k
{
  private static final JsonReader.a f = JsonReader.a.a(new String[] { "ef" });
  private static final JsonReader.a g = JsonReader.a.a(new String[] { "nm", "v" });
  private a a;
  private b b;
  private b c;
  private b d;
  private b e;
  
  private void a(JsonReader paramJsonReader, h paramh)
    throws IOException
  {
    paramJsonReader.e();
    String str = "";
    while (paramJsonReader.q())
    {
      int i = paramJsonReader.a0(g);
      if (i != 0)
      {
        int j = 1;
        if (i != 1)
        {
          paramJsonReader.c0();
          paramJsonReader.d0();
        }
        else
        {
          str.hashCode();
          switch (str.hashCode())
          {
          }
          do
          {
            do
            {
              do
              {
                do
                {
                  j = -1;
                  break;
                } while (!str.equals("Softness"));
                j = 4;
                break;
              } while (!str.equals("Shadow Color"));
              j = 3;
              break;
            } while (!str.equals("Direction"));
            j = 2;
            break;
            if (str.equals("Opacity")) {
              break;
            }
          } while ((goto 108) || (!str.equals("Distance")));
          j = 0;
          switch (j)
          {
          default: 
            paramJsonReader.d0();
            break;
          case 4: 
            this.e = d.e(paramJsonReader, paramh);
            break;
          case 3: 
            this.a = d.c(paramJsonReader, paramh);
            break;
          case 2: 
            this.c = d.f(paramJsonReader, paramh, false);
            break;
          case 1: 
            this.b = d.f(paramJsonReader, paramh, false);
            break;
          case 0: 
            this.d = d.e(paramJsonReader, paramh);
            break;
          }
        }
      }
      else
      {
        str = paramJsonReader.H();
      }
    }
    paramJsonReader.m();
  }
  
  j b(JsonReader paramJsonReader, h paramh)
    throws IOException
  {
    while (paramJsonReader.q()) {
      if (paramJsonReader.a0(f) != 0)
      {
        paramJsonReader.c0();
        paramJsonReader.d0();
      }
      else
      {
        paramJsonReader.d();
        while (paramJsonReader.q()) {
          a(paramJsonReader, paramh);
        }
        paramJsonReader.j();
      }
    }
    a locala = this.a;
    if (locala != null)
    {
      paramh = this.b;
      if (paramh != null)
      {
        paramJsonReader = this.c;
        if (paramJsonReader != null)
        {
          b localb1 = this.d;
          if (localb1 != null)
          {
            b localb2 = this.e;
            if (localb2 != null) {
              return new j(locala, paramh, paramJsonReader, localb1, localb2);
            }
          }
        }
      }
    }
    return null;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     j1.k
 * JD-Core Version:    0.7.0.1
 */