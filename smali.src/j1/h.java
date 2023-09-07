package j1;

import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.parser.moshi.JsonReader.a;
import java.io.IOException;
import k1.d;

class h
{
  private static final JsonReader.a a = JsonReader.a.a(new String[] { "ty", "d" });
  
  static g1.c a(JsonReader paramJsonReader, com.airbnb.lottie.h paramh)
    throws IOException
  {
    paramJsonReader.e();
    int i = 2;
    int j = 2;
    Object localObject1;
    for (;;)
    {
      boolean bool = paramJsonReader.q();
      localObject1 = null;
      if (!bool) {
        break label70;
      }
      int k = paramJsonReader.a0(a);
      if (k == 0) {
        break;
      }
      if (k != 1)
      {
        paramJsonReader.c0();
        paramJsonReader.d0();
      }
      else
      {
        j = paramJsonReader.z();
      }
    }
    Object localObject2 = paramJsonReader.H();
    break label73;
    label70:
    localObject2 = null;
    label73:
    if (localObject2 == null) {
      return null;
    }
    switch (((String)localObject2).hashCode())
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
            do
            {
              do
              {
                do
                {
                  do
                  {
                    do
                    {
                      do
                      {
                        do
                        {
                          do
                          {
                            do
                            {
                              i = -1;
                              break;
                            } while (!((String)localObject2).equals("tr"));
                            i = 13;
                            break;
                          } while (!((String)localObject2).equals("tm"));
                          i = 12;
                          break;
                        } while (!((String)localObject2).equals("st"));
                        i = 11;
                        break;
                      } while (!((String)localObject2).equals("sr"));
                      i = 10;
                      break;
                    } while (!((String)localObject2).equals("sh"));
                    i = 9;
                    break;
                  } while (!((String)localObject2).equals("rp"));
                  i = 8;
                  break;
                } while (!((String)localObject2).equals("rd"));
                i = 7;
                break;
              } while (!((String)localObject2).equals("rc"));
              i = 6;
              break;
            } while (!((String)localObject2).equals("mm"));
            i = 5;
            break;
          } while (!((String)localObject2).equals("gs"));
          i = 4;
          break;
        } while (!((String)localObject2).equals("gr"));
        i = 3;
        break;
        if (((String)localObject2).equals("gf")) {
          break;
        }
      } while ((goto 208) || (!((String)localObject2).equals("fl")));
      i = 1;
      break;
    } while (!((String)localObject2).equals("el"));
    i = 0;
    switch (i)
    {
    default: 
      paramh = new StringBuilder();
      paramh.append("Unknown shape type ");
      paramh.append((String)localObject2);
      d.c(paramh.toString());
      paramh = localObject1;
      break;
    case 13: 
      paramh = c.g(paramJsonReader, paramh);
      break;
    case 12: 
      paramh = m0.a(paramJsonReader, paramh);
      break;
    case 11: 
      paramh = l0.a(paramJsonReader, paramh);
      break;
    case 10: 
      paramh = c0.a(paramJsonReader, paramh, j);
      break;
    case 9: 
      paramh = k0.a(paramJsonReader, paramh);
      break;
    case 8: 
      paramh = e0.a(paramJsonReader, paramh);
      break;
    case 7: 
      paramh = f0.a(paramJsonReader, paramh);
      break;
    case 6: 
      paramh = d0.a(paramJsonReader, paramh);
      break;
    case 5: 
      localObject2 = y.a(paramJsonReader);
      paramh.a("Animation contains merge paths. Merge paths are only supported on KitKat+ and must be manually enabled by calling enableMergePathsForKitKatAndAbove().");
      paramh = (com.airbnb.lottie.h)localObject2;
      break;
    case 4: 
      paramh = q.a(paramJsonReader, paramh);
      break;
    case 3: 
      paramh = j0.a(paramJsonReader, paramh);
      break;
    case 2: 
      paramh = p.a(paramJsonReader, paramh);
      break;
    case 1: 
      paramh = i0.a(paramJsonReader, paramh);
      break;
    case 0: 
      paramh = f.a(paramJsonReader, paramh, j);
    }
    while (paramJsonReader.q()) {
      paramJsonReader.d0();
    }
    paramJsonReader.m();
    return paramh;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     j1.h
 * JD-Core Version:    0.7.0.1
 */